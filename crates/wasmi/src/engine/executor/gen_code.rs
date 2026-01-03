#![allow(dead_code)]

use crate::engine::executor::instrs::TraceEntry;
use crate::engine::executor::stack::FrameSlots;
use crate::ir::{Op, Slot};
use libc::{mmap, mprotect, munmap, MAP_ANONYMOUS, MAP_PRIVATE, PROT_EXEC, PROT_READ, PROT_WRITE};
use std::borrow::ToOwned;
use std::{cell::Cell, io, vec::Vec};

// fn(*slots) -> InstructionPtr
pub type JitFn = unsafe extern "C" fn(*mut u64) -> usize;

pub struct JitCode {
    pub func: JitFn,
    buffer: *mut u8,
    pub code_size: usize,
}

const JIT_BUF_SIZE: usize = 256 * 1024;

impl Drop for JitCode {
    fn drop(&mut self) {
        unsafe {
            if !self.buffer.is_null() {
                munmap(self.buffer as *mut _, JIT_BUF_SIZE);
            }
        }
    }
}

fn rex(w: bool, r: u8, x: u8, b: u8) -> u8 {
    0x40 | ((w as u8) << 3) | (((r >> 3) & 1) << 2) | (((x >> 3) & 1) << 1) | ((b >> 3) & 1)
}

fn modrm(mode: u8, reg: u8, rm: u8) -> u8 {
    ((mode & 0x3) << 6) | ((reg & 0x7) << 3) | (rm & 0x7)
}

fn slot_to_register(slot: Slot) -> Option<u8> {
    let slot_idx = i16::from(slot);
    if slot_idx < 0 {
        return None;
    }
    match slot_idx {
        0 => Some(0),  // RAX
        1 => Some(1),  // RCX
        2 => Some(2),  // RDX
        3 => Some(6),  // RSI
        4 => Some(8),  // R8
        5 => Some(9),  // R9
        6 => Some(10), // R10
        7 => Some(11), // R11
        _ => None,
    }
}

/// MOV dst_reg, [base_reg + offset]
fn emit_mov_from_memory(emit: &mut impl FnMut(&[u8]), dst_reg: u8, base_reg: u8, offset: i32) {
    let rex_byte = rex(true, dst_reg, 0, base_reg);
    emit(&[rex_byte]);

    if offset == 0 && (base_reg & 7) != 5 {
        // RBP/R13の特殊ケースを除き、disp0
        emit(&[0x8B, modrm(0, dst_reg, base_reg)]);
    } else if offset >= -128 && offset <= 127 {
        // disp8
        emit(&[0x8B, modrm(1, dst_reg, base_reg), offset as u8]);
    } else {
        // disp32
        emit(&[0x8B, modrm(2, dst_reg, base_reg)]);
        emit(&(offset as u32).to_le_bytes());
    }
}

/// MOV [base_reg + offset], src_reg
fn emit_mov_to_memory(emit: &mut impl FnMut(&[u8]), base_reg: u8, offset: i32, src_reg: u8) {
    let rex_byte = rex(true, src_reg, 0, base_reg);
    emit(&[rex_byte]);

    if offset == 0 && (base_reg & 7) != 5 {
        emit(&[0x89, modrm(0, src_reg, base_reg)]);
    } else if offset >= -128 && offset <= 127 {
        emit(&[0x89, modrm(1, src_reg, base_reg), offset as u8]);
    } else {
        emit(&[0x89, modrm(2, src_reg, base_reg)]);
        emit(&(offset as u32).to_le_bytes());
    }
}

/// MOV dst, src
fn emit_mov_r64_r64(emit: &mut impl FnMut(&[u8]), dst: u8, src: u8) {
    let rex_byte = rex(true, src, 0, dst);
    emit(&[rex_byte, 0x89, modrm(3, src, dst)]);
}

/// MOV dst, imm64
fn emit_mov_imm64(emit: &mut impl FnMut(&[u8]), dst: u8, imm: u64) {
    let rex_byte = rex(true, 0, 0, dst);
    emit(&[rex_byte, 0xB8 + (dst & 7)]);
    emit(&imm.to_le_bytes());
}

/// MOV dst(32bit), imm32
fn emit_mov_r32_imm32(emit: &mut impl FnMut(&[u8]), dst: u8, imm: u32) {
    if dst >= 8 {
        let rex_byte = rex(false, 0, 0, dst);
        emit(&[rex_byte]);
    }
    emit(&[0xB8 + (dst & 7)]);
    emit(&imm.to_le_bytes());
}

/// XOR dst, src (64bit)
fn emit_xor_r64_r64(emit: &mut impl FnMut(&[u8]), dst: u8, src: u8) {
    let rex_byte = rex(true, src, 0, dst);
    emit(&[rex_byte, 0x31, modrm(3, src, dst)]);
}

/// CMP reg(32bit), imm
fn emit_cmp_r32_imm(emit: &mut impl FnMut(&[u8]), reg: u8, imm: i16) {
    if reg >= 8 {
        let rex_byte = rex(false, 0, 0, reg);
        emit(&[rex_byte]);
    }

    if imm >= -128 && imm <= 127 {
        // CMP r32, imm8: 0x83 /7 + imm8
        emit(&[0x83, modrm(3, 7, reg), imm as u8]);
    } else {
        // CMP r32, imm32: 0x81 /7 + imm32
        emit(&[0x81, modrm(3, 7, reg)]);
        emit(&(imm as i32).to_le_bytes());
    }
}

/// SETE reg(8bit)
fn emit_sete(emit: &mut impl FnMut(&[u8]), reg: u8) {
    if reg >= 8 || reg == 4 || reg == 5 || reg == 6 || reg == 7 {
        // REXプレフィックスが必要（拡張レジスタまたはSPL/BPL/SIL/DILアクセス）
        let rex_byte = rex(false, 0, 0, reg);
        emit(&[rex_byte]);
    }
    emit(&[0x0F, 0x94, modrm(3, 0, reg)]);
}

/// MOVZX dst(64bit), src(8bit)
fn emit_movzx_r64_r8(emit: &mut impl FnMut(&[u8]), dst: u8, src: u8) {
    let rex_byte = rex(true, dst, 0, src);
    emit(&[rex_byte, 0x0F, 0xB6, modrm(3, dst, src)]);
}

fn emit_prologue(emit: &mut impl FnMut(&[u8])) {
    // R12, R13を退避 (callee-saved)
    emit(&[0x41, 0x54]); // PUSH R12
    emit(&[0x41, 0x55]); // PUSH R13

    // 8つのスロットをRDIからレジスタにロード
    let registers = [0, 1, 2, 6, 8, 9, 10, 11]; // RAX, RCX, RDX, RSI, R8-R11
    for (i, &reg) in registers.iter().enumerate() {
        emit_mov_from_memory(emit, reg, 7 /*RDI*/, (i * 8) as i32);
    }
}

fn emit_epilogue(emit: &mut impl FnMut(&[u8]), next_ip: *const Op) {
    // レジスタの値をRDIに書き戻し、next_ipを返す
    let registers = [0, 1, 2, 6, 8, 9, 10, 11];
    for (i, &reg) in registers.iter().enumerate() {
        emit_mov_to_memory(emit, 7 /*RDI*/, (i * 8) as i32, reg);
    }
    emit_mov_imm64(emit, 0 /*RAX*/, next_ip as usize as u64);

    // R12, R13を復元 (callee-saved)
    emit(&[0x41, 0x5D]); // POP R13
    emit(&[0x41, 0x5C]); // POP R12

    emit(&[0xC3]); // RET
}

/// スロットまたは定数から値を取得し、レジスタ番号を返す
fn get_operand_reg(emit: &mut impl FnMut(&[u8]), fs: &FrameSlots, slot: Slot, temp_reg: u8) -> u8 {
    let slot_idx = i16::from(slot);
    if slot_idx < 0 {
        let const_val = unsafe { fs.get(slot) };
        let val_u64 = u64::from(const_val);
        emit_mov_imm64(emit, temp_reg, val_u64);
        temp_reg
    } else {
        slot_to_register(slot).unwrap()
    }
}

fn emit_i64_add(emit: &mut impl FnMut(&[u8]), fs: &FrameSlots, result: Slot, lhs: Slot, rhs: Slot) {
    let result_reg = slot_to_register(result).unwrap();
    let lhs_reg = get_operand_reg(emit, fs, lhs, 12);
    let rhs_reg = get_operand_reg(emit, fs, rhs, 13);

    if result_reg != lhs_reg {
        emit_mov_r64_r64(emit, result_reg, lhs_reg);
    }

    // ADD result, rhs (REX.W + 0x01 + ModR/M)
    let rex_byte = rex(true, rhs_reg, 0, result_reg);
    emit(&[rex_byte, 0x01, modrm(3, rhs_reg, result_reg)]);
}

// TODO: ゼロ除算チェック
fn emit_i64_rem_u(
    emit: &mut impl FnMut(&[u8]),
    fs: &FrameSlots,
    result: Slot,
    lhs: Slot,
    rhs: Slot,
) {
    let lhs_reg = get_operand_reg(emit, fs, lhs, 12);
    if lhs_reg != 0 {
        emit_mov_r64_r64(emit, 0, lhs_reg);
    }

    // XOR RDX, RDX
    emit_xor_r64_r64(emit, 2, 2);

    // DIV rhs (REX.W + 0xF7 /6)
    let rhs_reg = get_operand_reg(emit, fs, rhs, 12);
    let rex_byte = rex(true, 0, 0, rhs_reg);
    emit(&[rex_byte, 0xF7, modrm(3, 6, rhs_reg)]);

    // MOV result, RDX
    let result_reg = slot_to_register(result).unwrap();
    if result_reg != 2 {
        emit_mov_r64_r64(emit, result_reg, 2);
    }
}

fn emit_i32_eq_imm16(
    emit: &mut impl FnMut(&[u8]),
    fs: &FrameSlots,
    result: Slot,
    lhs: Slot,
    rhs: i16,
) {
    let lhs_reg = get_operand_reg(emit, fs, lhs, 12);
    emit_cmp_r32_imm(emit, lhs_reg, rhs);

    let result_reg = slot_to_register(result).unwrap();
    emit_sete(emit, result_reg);
    emit_movzx_r64_r8(emit, result_reg, result_reg);
}

fn emit_i32_add_imm16(
    emit: &mut impl FnMut(&[u8]),
    fs: &FrameSlots,
    result: Slot,
    lhs: Slot,
    rhs: i16,
) {
    let result_reg = slot_to_register(result).unwrap();
    let lhs_reg = get_operand_reg(emit, fs, lhs, 12);

    if result_reg != lhs_reg {
        emit_mov_r64_r64(emit, result_reg, lhs_reg);
    }

    if rhs >= -128 && rhs <= 127 {
        // ADD r32, imm8: 0x83 /0 + imm8
        if result_reg >= 8 {
            emit(&[rex(false, 0, 0, result_reg)]);
        }
        emit(&[0x83, modrm(3, 0, result_reg), rhs as u8]);
    } else {
        // ADD r32, imm32: 0x81 /0 + imm32
        if result_reg >= 8 {
            emit(&[rex(false, 0, 0, result_reg)]);
        }
        emit(&[0x81, modrm(3, 0, result_reg)]);
        emit(&(rhs as i32).to_le_bytes());
    }
}

fn emit_copy_imm32(emit: &mut impl FnMut(&[u8]), result: Slot, value: u32) {
    let result_reg = slot_to_register(result).unwrap();
    emit_mov_r32_imm32(emit, result_reg, value);
}

fn emit_copy2(emit: &mut impl FnMut(&[u8]), results: [Slot; 2], values: [Slot; 2]) {
    let temp_reg = 12; // R12
    let val1_reg = slot_to_register(values[1]).unwrap();
    emit_mov_r64_r64(emit, temp_reg, val1_reg);

    let val0_reg = slot_to_register(values[0]).unwrap();
    let res0_reg = slot_to_register(results[0]).unwrap();
    emit_mov_r64_r64(emit, res0_reg, val0_reg);

    let res1_reg = slot_to_register(results[1]).unwrap();
    emit_mov_r64_r64(emit, res1_reg, temp_reg);
}

fn emit_select_i32_eq_imm16(
    emit: &mut impl FnMut(&[u8]),
    fs: &FrameSlots,
    result: Slot,
    lhs: Slot,
    rhs: i16,
    true_val: Slot,
    false_val: Slot,
) {
    let lhs_reg = get_operand_reg(emit, fs, lhs, 12);
    emit_cmp_r32_imm(emit, lhs_reg, rhs);

    let true_reg = slot_to_register(true_val).unwrap();
    let false_reg = slot_to_register(false_val).unwrap();
    let result_reg = slot_to_register(result).unwrap();

    emit_mov_r64_r64(emit, result_reg, false_reg);

    // CMOVE result, true_val (REX.W + 0x0F 0x44)
    let rex_byte = rex(true, result_reg, 0, true_reg);
    emit(&[rex_byte, 0x0F, 0x44, modrm(3, result_reg, true_reg)]);
}

fn emit_branch_i32_ne_imm16(
    emit: &mut impl FnMut(&[u8]),
    fs: &FrameSlots,
    lhs: Slot,
    rhs: i16,
    offset: &Cell<usize>,
    epilogue_jmp_offsets: &mut Vec<usize>,
) {
    let lhs_reg = get_operand_reg(emit, fs, lhs, 12);
    emit_cmp_r32_imm(emit, lhs_reg, rhs);

    // JE (等しい場合=分岐失敗) → エピローグへ
    // エピローグのアドレスは後で埋める
    emit(&[0x0F, 0x84]); // JE rel32
    epilogue_jmp_offsets.push(offset.get()); // 相対オフセットを書き込む位置
    emit(&[0, 0, 0, 0]); // プレースホルダー
}

fn emit_branch_i32_lt_u_imm16_rhs(
    emit: &mut impl FnMut(&[u8]),
    fs: &FrameSlots,
    lhs: Slot,
    rhs: i16,
    offset: &Cell<usize>,
    epilogue_jmp_offsets: &mut Vec<usize>,
) {
    let lhs_reg = get_operand_reg(emit, fs, lhs, 12);
    emit_cmp_r32_imm(emit, lhs_reg, rhs);

    // JAE (大なりイコール=分岐失敗) → エピローグへ
    emit(&[0x0F, 0x83]); // JAE rel32
    epilogue_jmp_offsets.push(offset.get());
    emit(&[0, 0, 0, 0]);
}

pub fn compile_trace(trace: &[TraceEntry], fs: &FrameSlots) -> io::Result<JitCode> {
    let buffer = unsafe {
        mmap(
            std::ptr::null_mut(),
            JIT_BUF_SIZE,
            PROT_READ | PROT_WRITE,
            MAP_PRIVATE | MAP_ANONYMOUS,
            -1,
            0,
        )
    };

    if buffer == libc::MAP_FAILED {
        return Err(io::Error::last_os_error());
    }

    let mut cursor = buffer as *mut u8;
    let start = cursor;

    let offset = Cell::new(0usize);

    let mut emit = |bytes: &[u8]| {
        let new_offset = offset.get() + bytes.len();
        if new_offset > JIT_BUF_SIZE {
            panic!(
                "JIT buffer overflow: trying to write {} bytes at offset {} (limit {})",
                bytes.len(),
                offset.get(),
                JIT_BUF_SIZE
            );
        }
        unsafe {
            for &b in bytes {
                *cursor = b;
                cursor = cursor.add(1);
            }
        }
        offset.set(new_offset);
    };

    emit_prologue(&mut emit);

    let mut epilogue_jmp_offsets = Vec::new();

    let mut i = 0;
    while i < trace.len() {
        let entry = &trace[i];

        match entry.op {
            Op::I64Add { result, lhs, rhs } => {
                emit_i64_add(&mut emit, fs, result, lhs, rhs);
            }
            Op::I64RemU { result, lhs, rhs } => {
                emit_i64_rem_u(&mut emit, fs, result, lhs, rhs);
            }
            Op::I32EqImm16 { result, lhs, rhs } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                emit_i32_eq_imm16(&mut emit, fs, result, lhs, rhs_val);
            }
            Op::BranchI32NeImm16 { lhs, rhs, .. } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                emit_branch_i32_ne_imm16(
                    &mut emit,
                    fs,
                    lhs,
                    rhs_val,
                    &offset,
                    &mut epilogue_jmp_offsets,
                );
            }
            Op::Copy2 { results, values } => {
                let result_slots = results.to_array();
                emit_copy2(&mut emit, result_slots, values);
            }
            Op::I32AddImm16 { result, lhs, rhs } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                emit_i32_add_imm16(&mut emit, fs, result, lhs, rhs_val);
            }
            Op::CopyImm32 { result, value } => {
                emit_copy_imm32(&mut emit, result, u32::from(value));
            }
            Op::SelectI32EqImm16 { result, lhs, rhs } => {
                if i + 1 >= trace.len() {
                    panic!("SelectI32EqImm16 must be followed by Slot2");
                }

                let mut next_ip = entry.ip.clone();
                next_ip.add(1);
                let (true_val, false_val) = match next_ip.get().to_owned() {
                    Op::Slot2 { slots: [t, f] } => (t, f),
                    _ => panic!("SelectI32EqImm16 must be followed by Slot2"),
                };
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                emit_select_i32_eq_imm16(&mut emit, fs, result, lhs, rhs_val, true_val, false_val);
            }
            Op::BranchI32LtUImm16Rhs { lhs, rhs, .. } => {
                let rhs_val = i16::try_from(u32::from(rhs)).unwrap();
                emit_branch_i32_lt_u_imm16_rhs(
                    &mut emit,
                    fs,
                    lhs,
                    rhs_val,
                    &offset,
                    &mut epilogue_jmp_offsets,
                );
            }
            _ => panic!("Unsupported instruction in trace: {:?}", entry.op),
        }

        i += 1;
    }

    let epilogue_start = offset.get();
    let next_ip = trace.last().map(|e| e.ip.ptr).unwrap_or(std::ptr::null());
    emit_epilogue(&mut emit, next_ip);

    for jmp_offset in epilogue_jmp_offsets {
        let rel32_pos = jmp_offset;
        let next_instr_pos = rel32_pos + 4;
        let relative_offset = (epilogue_start as i32) - (next_instr_pos as i32);

        unsafe {
            let ptr = start.add(rel32_pos) as *mut i32;
            *ptr = relative_offset;
        }
    }

    let result = unsafe { mprotect(buffer, JIT_BUF_SIZE, PROT_READ | PROT_EXEC) };
    if result != 0 {
        unsafe { munmap(buffer, JIT_BUF_SIZE) };
        return Err(io::Error::last_os_error());
    }

    let func: JitFn = unsafe { std::mem::transmute(start) };

    Ok(JitCode {
        func,
        buffer: start,
        code_size: offset.get(),
    })
}
