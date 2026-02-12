#![allow(dead_code)]

use crate::engine::executor::instrs::TraceEntry;
use crate::{debug_print, debug_println};
use crate::engine::executor::stack::FrameSlots;
use crate::ir::{Op, Slot};
use capstone::arch::BuildsCapstone;
use libc::{mmap, mprotect, munmap, MAP_ANONYMOUS, MAP_PRIVATE, PROT_EXEC, PROT_READ, PROT_WRITE};
use std::borrow::ToOwned;
use std::cmp;
use std::collections::HashMap;
use std::{io, vec, vec::Vec};

/// x86-64 register numbers
mod reg {
    pub const RAX: u8 = 0;
    pub const RCX: u8 = 1;
    pub const RDX: u8 = 2;
    pub const RBX: u8 = 3;
    pub const RSP: u8 = 4;
    pub const RBP: u8 = 5;
    pub const RSI: u8 = 6;
    pub const RDI: u8 = 7;
    pub const R8: u8 = 8;
    pub const R9: u8 = 9;
    pub const R10: u8 = 10;
    pub const R11: u8 = 11;
    pub const R12: u8 = 12;
    pub const R13: u8 = 13;
    pub const R14: u8 = 14;
    pub const R15: u8 = 15;
}

/// x86-64 opcode constants
mod opcode {
    pub const MOV_R_RM: u8 = 0x8B;
    pub const MOV_RM_R: u8 = 0x89;
    pub const ADD_RM_R: u8 = 0x01;
    pub const SUB_RM_R: u8 = 0x29;
    pub const XOR_RM_R: u8 = 0x31;
    pub const AND_RM_R: u8 = 0x21;
    pub const OR_RM_R: u8 = 0x09;
    pub const ALU_RM_IMM8: u8 = 0x83;
    pub const ALU_RM_IMM32: u8 = 0x81;
    pub const UNARY_RM: u8 = 0xF7;
    pub const CDQ: u8 = 0x99;
    pub const MOV_R_IMM: u8 = 0xB8;
    pub const SHIFT_RM_IMM8: u8 = 0xC1;
    pub const RET: u8 = 0xC3;
    pub const JMP_REL32: u8 = 0xE9;
    pub const PUSH_RBX: u8 = 0x53;
    pub const POP_RBX: u8 = 0x5B;
    pub const TWO_BYTE_PREFIX: u8 = 0x0F;
    pub const IMUL_R_RM: u8 = 0xAF;
    pub const SETE: u8 = 0x94;
    pub const MOVZX_R_RM8: u8 = 0xB6;
    pub const MOVSX_R_RM8: u8 = 0xBE;
    pub const MOVZX_R_RM16: u8 = 0xB7;
    pub const MOVSX_R_RM16: u8 = 0xBF;
    pub const CMOVE: u8 = 0x44;
    pub const JE_REL32: u8 = 0x84;
    pub const JNE_REL32: u8 = 0x85;
    pub const JL_REL32: u8 = 0x8C;
    pub const JGE_REL32: u8 = 0x8D;
    pub const JLE_REL32: u8 = 0x8E;
    pub const JG_REL32: u8 = 0x8F;
    pub const JB_REL32: u8 = 0x82;
    pub const JAE_REL32: u8 = 0x83;
    pub const JBE_REL32: u8 = 0x86;
    pub const JA_REL32: u8 = 0x87;
    pub const REX_PREFIX_R12: u8 = 0x41;
    pub const PUSH_R12: u8 = 0x54;
    pub const POP_R12: u8 = 0x5C;
    pub const PUSH_R13: u8 = 0x55;
    pub const POP_R13: u8 = 0x5D;
    pub const PUSH_R14: u8 = 0x56;
    pub const POP_R14: u8 = 0x5E;
    pub const PUSH_R15: u8 = 0x57;
    pub const POP_R15: u8 = 0x5F;
}

/// ModR/M reg field extensions for ALU operations
mod alu_ext {
    pub const ADD: u8 = 0;
    pub const OR: u8 = 1;
    pub const AND: u8 = 4;
    pub const SUB: u8 = 5;
    pub const XOR: u8 = 6;
    pub const CMP: u8 = 7;
}

/// ModR/M reg field extensions for unary/div operations
mod unary_ext {
    pub const DIV: u8 = 6;
    pub const IDIV: u8 = 7;
}

/// ModR/M reg field extensions for shift operations
mod shift_ext {
    pub const SHL: u8 = 4;
}

// fn(*slots, *memory, *global) -> InstructionPtr
pub type JitFn = unsafe extern "C" fn(*mut u64, *mut u8, *mut u64) -> usize;

pub struct JitCode {
    pub func: JitFn,
    buffer: *mut u8,
}

const JIT_BUF_SIZE: usize = 256 * 1024;
const OP_SIZE: usize = std::mem::size_of::<Op>();

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
    0b0100_0000
        | ((w as u8) << 3)
        | (((r >> 3) & 0b1) << 2)
        | (((x >> 3) & 0b1) << 1)
        | ((b >> 3) & 0b1)
}

fn modrm(mode: u8, reg: u8, rm: u8) -> u8 {
    ((mode & 0b11) << 6) | ((reg & 0b111) << 3) | (rm & 0b111)
}

fn sib(scale: u8, index: u8, base: u8) -> u8 {
    ((scale & 0b11) << 6) | ((index & 0b111) << 3) | (base & 0b111)
}

struct JitContext<'a> {
    buffer: *mut u8,
    cursor: *mut u8,
    offset: usize,
    slot_reg_map: HashMap<Slot, u8>,
    fs: &'a FrameSlots,
}

impl<'a> JitContext<'a> {
    fn new(buffer: *mut u8, slot_reg_map: HashMap<Slot, u8>, fs: &'a FrameSlots) -> Self {
        Self {
            buffer,
            cursor: buffer,
            offset: 0,
            slot_reg_map,
            fs,
        }
    }

    fn emit(&mut self, bytes: &[u8]) {
        let new_offset = self.offset + bytes.len();
        if new_offset > JIT_BUF_SIZE {
            panic!(
                "JIT buffer overflow: trying to write {} bytes at offset {} (limit {})",
                bytes.len(),
                self.offset,
                JIT_BUF_SIZE
            );
        }
        unsafe {
            for &b in bytes {
                *self.cursor = b;
                self.cursor = self.cursor.add(1);
            }
        }
        self.offset = new_offset;
    }

    fn get_offset(&self) -> usize {
        self.offset
    }

    fn slot_to_register(&self, slot: Slot) -> Option<u8> {
        let slot_idx = i16::from(slot);
        if slot_idx < 0 {
            return None;
        }
        self.slot_reg_map.get(&slot).copied()
    }

    /// MOV dst_reg, [base_reg + offset]
    fn emit_mov_from_memory(&mut self, dst_reg: u8, base_reg: u8, offset: i32) {
        let rex_byte = rex(true, dst_reg, 0, base_reg);
        self.emit(&[rex_byte]);

        if offset == 0 && (base_reg & 7) != reg::RBP {
            self.emit(&[opcode::MOV_R_RM, modrm(0, dst_reg, base_reg)]);
        } else if offset >= -128 && offset <= 127 {
            self.emit(&[opcode::MOV_R_RM, modrm(1, dst_reg, base_reg), offset as u8]);
        } else {
            self.emit(&[opcode::MOV_R_RM, modrm(2, dst_reg, base_reg)]);
            self.emit(&(offset as u32).to_le_bytes());
        }
    }

    /// MOV [base_reg + offset], src_reg
    fn emit_mov_to_memory(&mut self, base_reg: u8, offset: i32, src_reg: u8) {
        let rex_byte = rex(true, src_reg, 0, base_reg);
        self.emit(&[rex_byte]);

        if offset == 0 && (base_reg & 7) != reg::RBP {
            self.emit(&[opcode::MOV_RM_R, modrm(0, src_reg, base_reg)]);
        } else if offset >= -128 && offset <= 127 {
            self.emit(&[opcode::MOV_RM_R, modrm(1, src_reg, base_reg), offset as u8]);
        } else {
            self.emit(&[opcode::MOV_RM_R, modrm(2, src_reg, base_reg)]);
            self.emit(&(offset as u32).to_le_bytes());
        }
    }

    /// MOV dst, src
    fn emit_mov_r64_r64(&mut self, dst: u8, src: u8) {
        let rex_byte = rex(true, src, 0, dst);
        self.emit(&[rex_byte, opcode::MOV_RM_R, modrm(3, src, dst)]);
    }

    /// MOV dst, imm64
    fn emit_mov_imm64(&mut self, dst: u8, imm: u64) {
        let rex_byte = rex(true, 0, 0, dst);
        self.emit(&[rex_byte, opcode::MOV_R_IMM + (dst & 7)]);
        self.emit(&imm.to_le_bytes());
    }

    /// MOV dst(32bit), imm32
    fn emit_mov_r32_imm32(&mut self, dst: u8, imm: u32) {
        if dst >= 8 {
            let rex_byte = rex(false, 0, 0, dst);
            self.emit(&[rex_byte]);
        }
        self.emit(&[opcode::MOV_R_IMM + (dst & 7)]);
        self.emit(&imm.to_le_bytes());
    }

    /// XOR dst, src (64bit)
    fn emit_xor_r64_r64(&mut self, dst: u8, src: u8) {
        let rex_byte = rex(true, src, 0, dst);
        self.emit(&[rex_byte, opcode::XOR_RM_R, modrm(3, src, dst)]);
    }

    /// AND dst(32bit), src(32bit)
    fn emit_and_r32_r32(&mut self, dst: u8, src: u8) {
        if dst >= 8 || src >= 8 {
            let rex_byte = rex(false, src, 0, dst);
            self.emit(&[rex_byte]);
        }
        self.emit(&[opcode::AND_RM_R, modrm(3, src, dst)]);
    }

    /// OR dst(32bit), src(32bit)
    fn emit_or_r32_r32(&mut self, dst: u8, src: u8) {
        if dst >= 8 || src >= 8 {
            let rex_byte = rex(false, src, 0, dst);
            self.emit(&[rex_byte]);
        }
        self.emit(&[opcode::OR_RM_R, modrm(3, src, dst)]);
    }

    /// XOR dst(32bit), src(32bit)
    fn emit_xor_r32_r32(&mut self, dst: u8, src: u8) {
        if dst >= 8 || src >= 8 {
            let rex_byte = rex(false, src, 0, dst);
            self.emit(&[rex_byte]);
        }
        self.emit(&[opcode::XOR_RM_R, modrm(3, src, dst)]);
    }

    /// CMP reg(32bit), imm
    fn emit_cmp_r32_imm(&mut self, reg: u8, imm: i16) {
        self.emit_i32_alu_imm(reg, imm, alu_ext::CMP);
    }

    /// CMP lhs(32bit), rhs(32bit)
    fn emit_cmp_r32_r32(&mut self, lhs: u8, rhs: u8) {
        if lhs >= 8 || rhs >= 8 {
            self.emit(&[rex(false, rhs, 0, lhs)]);
        }
        // CMP r/m32, r32 (opcode 0x39)
        self.emit(&[0x39, modrm(3, rhs, lhs)]);
    }

    /// SETE reg(8bit)
    fn emit_sete(&mut self, reg: u8) {
        if reg >= 8 || reg == reg::RSP || reg == reg::RBP || reg == reg::RSI || reg == reg::RDI {
            let rex_byte = rex(false, 0, 0, reg);
            self.emit(&[rex_byte]);
        }
        self.emit(&[opcode::TWO_BYTE_PREFIX, opcode::SETE, modrm(3, 0, reg)]);
    }

    /// MOVZX dst(64bit), src(8bit)
    fn emit_movzx_r64_r8(&mut self, dst: u8, src: u8) {
        let rex_byte = rex(true, dst, 0, src);
        self.emit(&[
            rex_byte,
            opcode::TWO_BYTE_PREFIX,
            opcode::MOVZX_R_RM8,
            modrm(3, dst, src),
        ]);
    }

    /// MOV dst(32bit), [base + index + disp]
    fn emit_mov_r32_from_memory_sib(&mut self, dst: u8, base: u8, index: u8, disp: i32) {
        if dst >= 8 || base >= 8 || index >= 8 {
            let rex_byte = rex(false, dst, index, base);
            self.emit(&[rex_byte]);
        }

        if disp == 0 && (base & 7) != reg::RBP && (index & 7) != reg::RBP {
            self.emit(&[
                opcode::MOV_R_RM,
                modrm(0, dst, reg::RSP),
                sib(0, index, base),
            ]);
        } else if disp >= -128 && disp <= 127 {
            self.emit(&[
                opcode::MOV_R_RM,
                modrm(1, dst, reg::RSP),
                sib(0, index, base),
                disp as u8,
            ]);
        } else {
            self.emit(&[
                opcode::MOV_R_RM,
                modrm(2, dst, reg::RSP),
                sib(0, index, base),
            ]);
            self.emit(&(disp as u32).to_le_bytes());
        }
    }

    /// MOV [base + index + disp], src(32bit)
    fn emit_mov_r32_to_memory_sib(&mut self, base: u8, index: u8, disp: i32, src: u8) {
        if src >= 8 || base >= 8 || index >= 8 {
            let rex_byte = rex(false, src, index, base);
            self.emit(&[rex_byte]);
        }

        if disp == 0 && (base & 7) != reg::RBP && (index & 7) != reg::RBP {
            self.emit(&[
                opcode::MOV_RM_R,
                modrm(0, src, reg::RSP),
                sib(0, index, base),
            ]);
        } else if disp >= -128 && disp <= 127 {
            self.emit(&[
                opcode::MOV_RM_R,
                modrm(1, src, reg::RSP),
                sib(0, index, base),
                disp as u8,
            ]);
        } else {
            self.emit(&[
                opcode::MOV_RM_R,
                modrm(2, src, reg::RSP),
                sib(0, index, base),
            ]);
            self.emit(&(disp as u32).to_le_bytes());
        }
    }

    fn emit_prologue(&mut self) {
        self.emit(&[opcode::PUSH_RBX]);
        self.emit(&[opcode::REX_PREFIX_R12, opcode::PUSH_R12]);
        self.emit(&[opcode::REX_PREFIX_R12, opcode::PUSH_R13]);
        self.emit(&[opcode::REX_PREFIX_R12, opcode::PUSH_R14]);
        self.emit(&[opcode::REX_PREFIX_R12, opcode::PUSH_R15]);

        self.emit_mov_r64_r64(reg::R15, reg::RSI);
        self.emit_mov_r64_r64(reg::R14, reg::RDX);

        for (&slot, &reg) in self.slot_reg_map.clone().iter() {
            let slot_idx = i16::from(slot);
            self.emit_mov_from_memory(reg, reg::RDI, (slot_idx as usize * 8) as i32);
        }
    }

    fn emit_epilogue(&mut self, next_ip: *const Op) {
        for (&slot, &reg) in self.slot_reg_map.clone().iter() {
            let slot_idx = i16::from(slot);
            self.emit_mov_to_memory(reg::RDI, (slot_idx as usize * 8) as i32, reg);
        }
        self.emit_mov_imm64(reg::RAX, next_ip as usize as u64);

        self.emit(&[opcode::REX_PREFIX_R12, opcode::POP_R15]);
        self.emit(&[opcode::REX_PREFIX_R12, opcode::POP_R14]);
        self.emit(&[opcode::REX_PREFIX_R12, opcode::POP_R13]);
        self.emit(&[opcode::REX_PREFIX_R12, opcode::POP_R12]);
        self.emit(&[opcode::POP_RBX]);

        self.emit(&[opcode::RET]);
    }

    fn get_operand_reg(&mut self, slot: Slot, temp_reg: u8) -> u8 {
        let slot_idx = i16::from(slot);
        if slot_idx < 0 {
            let const_val = unsafe { self.fs.get(slot) };
            let val_u64 = u64::from(const_val);
            self.emit_mov_imm64(temp_reg, val_u64);
            temp_reg
        } else {
            self.slot_to_register(slot).unwrap()
        }
    }

    fn prepare_binary_operands(&mut self, result: Slot, lhs: Slot, rhs: Slot) -> (u8, u8, u8) {
        let result_reg = self.slot_to_register(result).unwrap();
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        let rhs_reg = self.get_operand_reg(rhs, reg::R13);

        if result_reg != lhs_reg {
            self.emit_mov_r64_r64(result_reg, lhs_reg);
        }

        (result_reg, lhs_reg, rhs_reg)
    }

    fn prepare_imm16_operands(&mut self, result: Slot, lhs: Slot) -> u8 {
        let result_reg = self.slot_to_register(result).unwrap();
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);

        if result_reg != lhs_reg {
            self.emit_mov_r64_r64(result_reg, lhs_reg);
        }

        result_reg
    }

    /// opcode_ext: ModR/M reg field for ALU operations
    fn emit_i32_alu_imm(&mut self, result_reg: u8, rhs: i16, opcode_ext: u8) {
        if rhs >= -128 && rhs <= 127 {
            if result_reg >= 8 {
                self.emit(&[rex(false, 0, 0, result_reg)]);
            }
            self.emit(&[
                opcode::ALU_RM_IMM8,
                modrm(3, opcode_ext, result_reg),
                rhs as u8,
            ]);
        } else {
            if result_reg >= 8 {
                self.emit(&[rex(false, 0, 0, result_reg)]);
            }
            self.emit(&[opcode::ALU_RM_IMM32, modrm(3, opcode_ext, result_reg)]);
            self.emit(&(rhs as i32).to_le_bytes());
        }
    }

    fn emit_i64_add(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let (result_reg, _, rhs_reg) = self.prepare_binary_operands(result, lhs, rhs);

        let rex_byte = rex(true, rhs_reg, 0, result_reg);
        self.emit(&[rex_byte, opcode::ADD_RM_R, modrm(3, rhs_reg, result_reg)]);
    }

    fn emit_i32_add(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let (result_reg, _, rhs_reg) = self.prepare_binary_operands(result, lhs, rhs);

        if result_reg >= 8 || rhs_reg >= 8 {
            self.emit(&[rex(false, rhs_reg, 0, result_reg)]);
        }
        self.emit(&[opcode::ADD_RM_R, modrm(3, rhs_reg, result_reg)]);
    }

    fn emit_i32_sub(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let (result_reg, _, rhs_reg) = self.prepare_binary_operands(result, lhs, rhs);

        if result_reg >= 8 || rhs_reg >= 8 {
            self.emit(&[rex(false, rhs_reg, 0, result_reg)]);
        }
        self.emit(&[opcode::SUB_RM_R, modrm(3, rhs_reg, result_reg)]);
    }

    fn emit_i32_mul(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let (result_reg, _, rhs_reg) = self.prepare_binary_operands(result, lhs, rhs);

        if result_reg >= 8 || rhs_reg >= 8 {
            self.emit(&[rex(false, result_reg, 0, rhs_reg)]);
        }
        self.emit(&[
            opcode::TWO_BYTE_PREFIX,
            opcode::IMUL_R_RM,
            modrm(3, result_reg, rhs_reg),
        ]);
    }

    fn emit_i32_div_s(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        if lhs_reg != reg::RAX {
            self.emit_mov_r64_r64(reg::RAX, lhs_reg);
        }

        self.emit(&[opcode::CDQ]);

        let rhs_reg = self.get_operand_reg(rhs, reg::R12);
        if rhs_reg >= 8 {
            self.emit(&[rex(false, 0, 0, rhs_reg)]);
        }
        self.emit(&[opcode::UNARY_RM, modrm(3, unary_ext::IDIV, rhs_reg)]);

        let result_reg = self.slot_to_register(result).unwrap();
        if result_reg != reg::RAX {
            self.emit_mov_r64_r64(result_reg, reg::RAX);
        }
    }

    fn emit_i32_div_u(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        if lhs_reg != reg::RAX {
            self.emit_mov_r64_r64(reg::RAX, lhs_reg);
        }

        // XOR EDX, EDX
        self.emit(&[opcode::XOR_RM_R, modrm(3, reg::RDX, reg::RDX)]);

        let rhs_reg = self.get_operand_reg(rhs, reg::R12);
        if rhs_reg >= 8 {
            self.emit(&[rex(false, 0, 0, rhs_reg)]);
        }
        self.emit(&[opcode::UNARY_RM, modrm(3, unary_ext::DIV, rhs_reg)]);

        let result_reg = self.slot_to_register(result).unwrap();
        if result_reg != reg::RAX {
            self.emit_mov_r64_r64(result_reg, reg::RAX);
        }
    }

    fn emit_i32_rem_s(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        if lhs_reg != reg::RAX {
            self.emit_mov_r64_r64(reg::RAX, lhs_reg);
        }

        self.emit(&[opcode::CDQ]);

        let rhs_reg = self.get_operand_reg(rhs, reg::R12);
        if rhs_reg >= 8 {
            self.emit(&[rex(false, 0, 0, rhs_reg)]);
        }
        self.emit(&[opcode::UNARY_RM, modrm(3, unary_ext::IDIV, rhs_reg)]);

        let result_reg = self.slot_to_register(result).unwrap();
        if result_reg != reg::RDX {
            self.emit_mov_r64_r64(result_reg, reg::RDX);
        }
    }

    fn emit_i32_rem_u(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        if lhs_reg != reg::RAX {
            self.emit_mov_r64_r64(reg::RAX, lhs_reg);
        }

        // XOR EDX, EDX
        self.emit(&[opcode::XOR_RM_R, modrm(3, reg::RDX, reg::RDX)]);

        let rhs_reg = self.get_operand_reg(rhs, reg::R12);
        if rhs_reg >= 8 {
            self.emit(&[rex(false, 0, 0, rhs_reg)]);
        }
        self.emit(&[opcode::UNARY_RM, modrm(3, unary_ext::DIV, rhs_reg)]);

        let result_reg = self.slot_to_register(result).unwrap();
        if result_reg != reg::RDX {
            self.emit_mov_r64_r64(result_reg, reg::RDX);
        }
    }

    fn emit_i32_bitand(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let (result_reg, _, rhs_reg) = self.prepare_binary_operands(result, lhs, rhs);
        self.emit_and_r32_r32(result_reg, rhs_reg);
    }

    fn emit_i32_bitor(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let (result_reg, _, rhs_reg) = self.prepare_binary_operands(result, lhs, rhs);
        self.emit_or_r32_r32(result_reg, rhs_reg);
    }

    fn emit_i32_bitxor(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let (result_reg, _, rhs_reg) = self.prepare_binary_operands(result, lhs, rhs);
        self.emit_xor_r32_r32(result_reg, rhs_reg);
    }

    fn emit_i64_rem_u(&mut self, result: Slot, lhs: Slot, rhs: Slot) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        if lhs_reg != reg::RAX {
            self.emit_mov_r64_r64(reg::RAX, lhs_reg);
        }

        self.emit_xor_r64_r64(reg::RDX, reg::RDX);

        let rhs_reg = self.get_operand_reg(rhs, reg::R12);
        let rex_byte = rex(true, 0, 0, rhs_reg);
        self.emit(&[
            rex_byte,
            opcode::UNARY_RM,
            modrm(3, unary_ext::DIV, rhs_reg),
        ]);

        let result_reg = self.slot_to_register(result).unwrap();
        if result_reg != reg::RDX {
            self.emit_mov_r64_r64(result_reg, reg::RDX);
        }
    }

    fn emit_i32_rem_u_imm16_rhs(&mut self, result: Slot, lhs: Slot, rhs: u32) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        if lhs_reg != reg::RAX {
            self.emit_mov_r64_r64(reg::RAX, lhs_reg);
        }

        self.emit(&[opcode::XOR_RM_R, modrm(3, reg::RDX, reg::RDX)]);

        self.emit_mov_r32_imm32(reg::R12, rhs);

        let rex_byte = rex(false, 0, 0, reg::R12);
        self.emit(&[
            rex_byte,
            opcode::UNARY_RM,
            modrm(3, unary_ext::DIV, reg::R12),
        ]);

        let result_reg = self.slot_to_register(result).unwrap();
        if result_reg != reg::RDX {
            self.emit_mov_r64_r64(result_reg, reg::RDX);
        }
    }

    fn emit_i32_eq_imm16(&mut self, result: Slot, lhs: Slot, rhs: i16) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        self.emit_cmp_r32_imm(lhs_reg, rhs);

        let result_reg = self.slot_to_register(result).unwrap();
        self.emit_sete(result_reg);
        self.emit_movzx_r64_r8(result_reg, result_reg);
    }

    fn emit_i32_add_imm16(&mut self, result: Slot, lhs: Slot, rhs: i16) {
        let result_reg = self.prepare_imm16_operands(result, lhs);
        self.emit_i32_alu_imm(result_reg, rhs, alu_ext::ADD);
    }

    fn emit_i32_bitand_imm16(&mut self, result: Slot, lhs: Slot, rhs: i16) {
        let result_reg = self.prepare_imm16_operands(result, lhs);
        self.emit_i32_alu_imm(result_reg, rhs, alu_ext::AND);
    }

    fn emit_i32_bitor_imm16(&mut self, result: Slot, lhs: Slot, rhs: i16) {
        let result_reg = self.prepare_imm16_operands(result, lhs);
        self.emit_i32_alu_imm(result_reg, rhs, alu_ext::OR);
    }

    fn emit_i32_bitxor_imm16(&mut self, result: Slot, lhs: Slot, rhs: i16) {
        let result_reg = self.prepare_imm16_operands(result, lhs);
        self.emit_i32_alu_imm(result_reg, rhs, alu_ext::XOR);
    }

    fn emit_i32_shl_by(&mut self, result: Slot, lhs: Slot, shift_amount: u8) {
        let result_reg = self.prepare_imm16_operands(result, lhs);

        if result_reg >= 8 {
            self.emit(&[rex(false, 0, 0, result_reg)]);
        }
        self.emit(&[
            opcode::SHIFT_RM_IMM8,
            modrm(3, shift_ext::SHL, result_reg),
            shift_amount,
        ]);
    }

    fn emit_load32_offset16(&mut self, result: Slot, ptr: Slot, offset: u16) {
        let result_reg = self.slot_to_register(result).unwrap();
        let ptr_reg = self.get_operand_reg(ptr, reg::R12);

        self.emit_mov_r32_from_memory_sib(result_reg, reg::R15, ptr_reg, offset as i32);
    }

    fn emit_store32_offset16(&mut self, ptr: Slot, offset: u16, value: Slot) {
        let ptr_reg = self.get_operand_reg(ptr, reg::R12);
        let value_reg = self.get_operand_reg(value, reg::R13);

        self.emit_mov_r32_to_memory_sib(reg::R15, ptr_reg, offset as i32, value_reg);
    }

    fn emit_store32_offset16_imm16(&mut self, ptr: Slot, offset: u16, value: i32) {
        let ptr_reg = self.get_operand_reg(ptr, reg::R12);

        // Load immediate value into R13
        self.emit_mov_r32_imm32(reg::R13, value as u32);

        self.emit_mov_r32_to_memory_sib(reg::R15, ptr_reg, offset as i32, reg::R13);
    }

    /// MOV [base + index + disp], src(8bit)
    fn emit_mov_r8_to_memory_sib(&mut self, base: u8, index: u8, disp: i32, src: u8) {
        // For 8-bit operations with RSP, RBP, RSI, RDI as source, we need REX prefix
        // to access the low byte (SPL, BPL, SIL, DIL instead of AH, CH, DH, BH)
        let needs_rex = src >= 8
            || base >= 8
            || index >= 8
            || src == reg::RSP
            || src == reg::RBP
            || src == reg::RSI
            || src == reg::RDI;
        if needs_rex {
            let rex_byte = rex(false, src, index, base);
            self.emit(&[rex_byte]);
        }

        // MOV r/m8, r8 opcode is 0x88
        if disp == 0 && (base & 7) != reg::RBP && (index & 7) != reg::RBP {
            self.emit(&[0x88, modrm(0, src, reg::RSP), sib(0, index, base)]);
        } else if disp >= -128 && disp <= 127 {
            self.emit(&[
                0x88,
                modrm(1, src, reg::RSP),
                sib(0, index, base),
                disp as u8,
            ]);
        } else {
            self.emit(&[0x88, modrm(2, src, reg::RSP), sib(0, index, base)]);
            self.emit(&(disp as u32).to_le_bytes());
        }
    }

    fn emit_store8_offset16(&mut self, ptr: Slot, offset: u16, value: Slot) {
        let ptr_reg = self.get_operand_reg(ptr, reg::R12);
        let value_reg = self.get_operand_reg(value, reg::R13);

        self.emit_mov_r8_to_memory_sib(reg::R15, ptr_reg, offset as i32, value_reg);
    }

    fn emit_load_extend_sib(&mut self, opcode_second: u8, dst: u8, base: u8, index: u8, disp: i32) {
        if dst >= 8 || base >= 8 || index >= 8 {
            let rex_byte = rex(false, dst, index, base);
            self.emit(&[rex_byte]);
        }

        if disp == 0 && (base & 7) != reg::RBP && (index & 7) != reg::RBP {
            self.emit(&[
                opcode::TWO_BYTE_PREFIX,
                opcode_second,
                modrm(0, dst, reg::RSP),
                sib(0, index, base),
            ]);
        } else if disp >= -128 && disp <= 127 {
            self.emit(&[
                opcode::TWO_BYTE_PREFIX,
                opcode_second,
                modrm(1, dst, reg::RSP),
                sib(0, index, base),
                disp as u8,
            ]);
        } else {
            self.emit(&[
                opcode::TWO_BYTE_PREFIX,
                opcode_second,
                modrm(2, dst, reg::RSP),
                sib(0, index, base),
            ]);
            self.emit(&(disp as u32).to_le_bytes());
        }
    }

    fn emit_load_offset16(&mut self, opcode_second: u8, result: Slot, ptr: Slot, offset: u16) {
        let result_reg = self.slot_to_register(result).unwrap();
        let ptr_reg = self.get_operand_reg(ptr, reg::R12);
        self.emit_load_extend_sib(opcode_second, result_reg, reg::R15, ptr_reg, offset as i32);
    }

    fn emit_load8s_offset16(&mut self, result: Slot, ptr: Slot, offset: u16) {
        self.emit_load_offset16(opcode::MOVSX_R_RM8, result, ptr, offset);
    }

    fn emit_load8u_offset16(&mut self, result: Slot, ptr: Slot, offset: u16) {
        self.emit_load_offset16(opcode::MOVZX_R_RM8, result, ptr, offset);
    }

    fn emit_load16s_offset16(&mut self, result: Slot, ptr: Slot, offset: u16) {
        self.emit_load_offset16(opcode::MOVSX_R_RM16, result, ptr, offset);
    }

    fn emit_load16u_offset16(&mut self, result: Slot, ptr: Slot, offset: u16) {
        self.emit_load_offset16(opcode::MOVZX_R_RM16, result, ptr, offset);
    }

    fn emit_copy_imm32(&mut self, result: Slot, value: u32) {
        let result_reg = self.slot_to_register(result).unwrap();
        self.emit_mov_r32_imm32(result_reg, value);
    }

    fn emit_copy(&mut self, result: Slot, value: Slot) {
        let result_reg = self.slot_to_register(result).unwrap();
        let value_reg = self.get_operand_reg(value, reg::R12);
        if result_reg != value_reg {
            self.emit_mov_r64_r64(result_reg, value_reg);
        }
    }

    fn emit_copy2(&mut self, results: [Slot; 2], values: [Slot; 2]) {
        let temp_reg = reg::R12;
        let val1_reg = self.slot_to_register(values[1]).unwrap();
        self.emit_mov_r64_r64(temp_reg, val1_reg);

        let val0_reg = self.slot_to_register(values[0]).unwrap();
        let res0_reg = self.slot_to_register(results[0]).unwrap();
        self.emit_mov_r64_r64(res0_reg, val0_reg);

        let res1_reg = self.slot_to_register(results[1]).unwrap();
        self.emit_mov_r64_r64(res1_reg, temp_reg);
    }

    fn emit_select_i32_eq_imm16(
        &mut self,
        result: Slot,
        lhs: Slot,
        rhs: i16,
        true_val: Slot,
        false_val: Slot,
    ) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        self.emit_cmp_r32_imm(lhs_reg, rhs);

        let true_reg = self.slot_to_register(true_val).unwrap();
        let false_reg = self.slot_to_register(false_val).unwrap();
        let result_reg = self.slot_to_register(result).unwrap();

        self.emit_mov_r64_r64(result_reg, false_reg);

        // CMOVE result, true_val
        let rex_byte = rex(true, result_reg, 0, true_reg);
        self.emit(&[
            rex_byte,
            opcode::TWO_BYTE_PREFIX,
            opcode::CMOVE,
            modrm(3, result_reg, true_reg),
        ]);
    }

    fn emit_global_get(&mut self, result: Slot) {
        let result_reg = self.slot_to_register(result).unwrap();
        self.emit_mov_from_memory(result_reg, reg::R14, 0);
    }

    fn emit_global_set(&mut self, input: Slot) {
        let input_reg = self.get_operand_reg(input, reg::R12);
        self.emit_mov_to_memory(reg::R14, 0, input_reg);
    }

    fn emit_global_set_imm(&mut self, value: u64) {
        self.emit_mov_imm64(reg::R12, value);
        self.emit_mov_to_memory(reg::R14, 0, reg::R12);
    }

    fn emit_branch_i32_cmp(
        &mut self,
        lhs: Slot,
        rhs: Slot,
        cond: BranchCond,
        taken: bool,
        guard_exits: &mut Vec<(usize, *const Op)>,
        current_ip: *const Op,
        is_last: bool,
        loop_start_offset: usize,
    ) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        let rhs_reg = self.get_operand_reg(rhs, reg::R13);
        self.emit_cmp_r32_r32(lhs_reg, rhs_reg);

        let jcc_opcode = if taken {
            cond.guard_opcode_if_taken()
        } else {
            cond.guard_opcode_if_not_taken()
        };
        self.emit(&[opcode::TWO_BYTE_PREFIX, jcc_opcode]);
        guard_exits.push((self.offset, current_ip));
        self.emit(&[0, 0, 0, 0]);

        if is_last {
            let current_pos = self.offset;
            let next_instr_pos = current_pos + 5;
            let relative_offset = (loop_start_offset as i32) - (next_instr_pos as i32);
            self.emit(&[opcode::JMP_REL32]);
            self.emit(&relative_offset.to_le_bytes());
        }
    }

    fn emit_branch_i32_cmp_imm16(
        &mut self,
        lhs: Slot,
        rhs: i16,
        cond: BranchCond,
        taken: bool,
        guard_exits: &mut Vec<(usize, *const Op)>,
        current_ip: *const Op,
        is_last: bool,
        loop_start_offset: usize,
    ) {
        let lhs_reg = self.get_operand_reg(lhs, reg::R12);
        self.emit_cmp_r32_imm(lhs_reg, rhs);

        let jcc_opcode = if taken {
            cond.guard_opcode_if_taken()
        } else {
            cond.guard_opcode_if_not_taken()
        };
        self.emit(&[opcode::TWO_BYTE_PREFIX, jcc_opcode]);
        guard_exits.push((self.offset, current_ip));
        self.emit(&[0, 0, 0, 0]);

        if is_last {
            let current_pos = self.offset;
            let next_instr_pos = current_pos + 5;
            let relative_offset = (loop_start_offset as i32) - (next_instr_pos as i32);
            self.emit(&[opcode::JMP_REL32]);
            self.emit(&relative_offset.to_le_bytes());
        }
    }

    fn emit_branch(&mut self, is_last: bool, loop_start_offset: usize) {
        if is_last {
            let current_pos = self.offset;
            let next_instr_pos = current_pos + 5;
            let relative_offset = (loop_start_offset as i32) - (next_instr_pos as i32);
            self.emit(&[opcode::JMP_REL32]);
            self.emit(&relative_offset.to_le_bytes());
        }
    }

    /// Emit branch for `lhs_imm <= rhs_reg` (unsigned)
    /// CMP rhs, lhs sets flags for (rhs - lhs)
    /// lhs <= rhs (unsigned) is equivalent to rhs >= lhs (unsigned), which is CF=0 (JAE)
    fn emit_branch_i32_cmp_imm16_lhs_le_u(
        &mut self,
        lhs: i16,
        rhs: Slot,
        taken: bool,
        guard_exits: &mut Vec<(usize, *const Op)>,
        current_ip: *const Op,
        is_last: bool,
        loop_start_offset: usize,
    ) {
        let rhs_reg = self.get_operand_reg(rhs, reg::R12);
        self.emit_cmp_r32_imm(rhs_reg, lhs);

        // lhs <= rhs (unsigned) is true when rhs >= lhs (CF=0 after CMP rhs, lhs)
        // Guard: if taken, exit when NOT (lhs <= rhs), i.e., lhs > rhs, i.e., rhs < lhs (CF=1) → JB
        //        if not taken, exit when (lhs <= rhs), i.e., rhs >= lhs (CF=0) → JAE
        let jcc_opcode = if taken {
            opcode::JB_REL32 // exit if rhs < lhs (condition is false)
        } else {
            opcode::JAE_REL32 // exit if rhs >= lhs (condition is true)
        };
        self.emit(&[opcode::TWO_BYTE_PREFIX, jcc_opcode]);
        guard_exits.push((self.offset, current_ip));
        self.emit(&[0, 0, 0, 0]);

        if is_last {
            let current_pos = self.offset;
            let next_instr_pos = current_pos + 5;
            let relative_offset = (loop_start_offset as i32) - (next_instr_pos as i32);
            self.emit(&[opcode::JMP_REL32]);
            self.emit(&relative_offset.to_le_bytes());
        }
    }

    fn emit_branch_table_0(
        &mut self,
        index: Slot,
        expected_index: u32,
        guard_exits: &mut Vec<(usize, *const Op)>,
        current_ip: *const Op,
        is_last: bool,
        loop_start_offset: usize,
    ) {
        // 1. Load the index value into a register
        let index_reg = self.get_operand_reg(index, reg::R12);

        // 2. Compare with expected_index
        if expected_index <= i16::MAX as u32 {
            self.emit_cmp_r32_imm(index_reg, expected_index as i16);
        } else {
            // For large values, load into R13 and compare
            self.emit_mov_r32_imm32(reg::R13, expected_index);
            // CMP index_reg, R13 (32-bit)
            if index_reg >= 8 || reg::R13 >= 8 {
                self.emit(&[rex(false, reg::R13, 0, index_reg)]);
            }
            self.emit(&[0x39, modrm(3, reg::R13, index_reg)]); // CMP r/m32, r32
        }

        // 3. Guard: if not equal, jump to epilogue
        self.emit(&[opcode::TWO_BYTE_PREFIX, opcode::JNE_REL32]);
        guard_exits.push((self.offset, current_ip));
        self.emit(&[0, 0, 0, 0]);

        // 4. If match and is_last, jump to loop start
        if is_last {
            let current_pos = self.offset;
            let next_instr_pos = current_pos + 5;
            let relative_offset = (loop_start_offset as i32) - (next_instr_pos as i32);
            self.emit(&[opcode::JMP_REL32]);
            self.emit(&relative_offset.to_le_bytes());
        }
    }

    fn emit_branch_table_span(
        &mut self,
        index: Slot,
        expected_index: u32,
        values_span: crate::ir::BoundedSlotSpan,
        results_span: crate::ir::SlotSpan,
        guard_exits: &mut Vec<(usize, *const Op)>,
        current_ip: *const Op,
        is_last: bool,
        loop_start_offset: usize,
    ) {
        // 1. Load the index value into a register
        let index_reg = self.get_operand_reg(index, reg::R12);

        // 2. Compare with expected_index
        if expected_index <= i16::MAX as u32 {
            self.emit_cmp_r32_imm(index_reg, expected_index as i16);
        } else {
            // For large values, load into R13 and compare
            self.emit_mov_r32_imm32(reg::R13, expected_index);
            // CMP index_reg, R13 (32-bit)
            if index_reg >= 8 || reg::R13 >= 8 {
                self.emit(&[rex(false, reg::R13, 0, index_reg)]);
            }
            self.emit(&[0x39, modrm(3, reg::R13, index_reg)]); // CMP r/m32, r32
        }

        // 3. Guard: if not equal, jump to epilogue
        self.emit(&[opcode::TWO_BYTE_PREFIX, opcode::JNE_REL32]);
        guard_exits.push((self.offset, current_ip));
        self.emit(&[0, 0, 0, 0]);

        // 4. Copy values from source span to result span
        let len = values_span.len();
        for i in 0..len {
            let src_slot = values_span.span().head().next_n(i);
            let dst_slot = results_span.head().next_n(i);

            // Try to use registers if available, otherwise use memory
            let src_reg = self.slot_to_register(src_slot);
            let dst_reg = self.slot_to_register(dst_slot);

            match (src_reg, dst_reg) {
                (Some(s), Some(d)) => {
                    if s != d {
                        self.emit_mov_r64_r64(d, s);
                    }
                }
                (Some(s), None) => {
                    // Store to memory
                    let dst_idx = i16::from(dst_slot) as usize;
                    self.emit_mov_to_memory(reg::RDI, (dst_idx * 8) as i32, s);
                }
                (None, Some(d)) => {
                    // Load from memory
                    let src_idx = i16::from(src_slot) as usize;
                    self.emit_mov_from_memory(d, reg::RDI, (src_idx * 8) as i32);
                }
                (None, None) => {
                    // Memory to memory via temp register
                    let src_idx = i16::from(src_slot) as usize;
                    let dst_idx = i16::from(dst_slot) as usize;
                    self.emit_mov_from_memory(reg::R12, reg::RDI, (src_idx * 8) as i32);
                    self.emit_mov_to_memory(reg::RDI, (dst_idx * 8) as i32, reg::R12);
                }
            }
        }

        // 5. If match and is_last, jump to loop start
        if is_last {
            let current_pos = self.offset;
            let next_instr_pos = current_pos + 5;
            let relative_offset = (loop_start_offset as i32) - (next_instr_pos as i32);
            self.emit(&[opcode::JMP_REL32]);
            self.emit(&relative_offset.to_le_bytes());
        }
    }
}

#[derive(Clone, Copy)]
enum BranchCond {
    Eq,
    Ne,
    LtS,
    LeS,
    LtU,
    LeU,
}

impl BranchCond {
    /// Returns the Jcc opcode (second byte after 0x0F) for guard when branch is taken
    fn guard_opcode_if_taken(self) -> u8 {
        match self {
            BranchCond::Eq => opcode::JNE_REL32,
            BranchCond::Ne => opcode::JE_REL32,
            BranchCond::LtS => opcode::JGE_REL32,
            BranchCond::LeS => opcode::JG_REL32,
            BranchCond::LtU => opcode::JAE_REL32,
            BranchCond::LeU => opcode::JA_REL32,
        }
    }

    /// Returns the Jcc opcode (second byte after 0x0F) for guard when branch is not taken
    fn guard_opcode_if_not_taken(self) -> u8 {
        match self {
            BranchCond::Eq => opcode::JE_REL32,
            BranchCond::Ne => opcode::JNE_REL32,
            BranchCond::LtS => opcode::JL_REL32,
            BranchCond::LeS => opcode::JLE_REL32,
            BranchCond::LtU => opcode::JB_REL32,
            BranchCond::LeU => opcode::JBE_REL32,
        }
    }
}

fn extract_slots(op: &Op) -> Vec<Slot> {
    match op {
        Op::I64Add { result, lhs, rhs }
        | Op::I64RemU { result, lhs, rhs }
        | Op::I32Add { result, lhs, rhs }
        | Op::I32Sub { result, lhs, rhs }
        | Op::I32Mul { result, lhs, rhs }
        | Op::I32DivS { result, lhs, rhs }
        | Op::I32DivU { result, lhs, rhs }
        | Op::I32RemS { result, lhs, rhs }
        | Op::I32RemU { result, lhs, rhs }
        | Op::I32BitAnd { result, lhs, rhs }
        | Op::I32BitOr { result, lhs, rhs }
        | Op::I32BitXor { result, lhs, rhs } => {
            vec![*result, *lhs, *rhs]
        }

        Op::I32RemUImm16Rhs { result, lhs, .. }
        | Op::I32BitAndImm16 { result, lhs, .. }
        | Op::I32BitOrImm16 { result, lhs, .. }
        | Op::I32BitXorImm16 { result, lhs, .. }
        | Op::I32ShlBy { result, lhs, .. }
        | Op::I32AddImm16 { result, lhs, .. }
        | Op::I32EqImm16 { result, lhs, .. }
        | Op::SelectI32EqImm16 { result, lhs, .. } => {
            vec![*result, *lhs]
        }

        Op::Load32Offset16 { result, ptr, .. }
        | Op::I32Load8sOffset16 { result, ptr, .. }
        | Op::I32Load8uOffset16 { result, ptr, .. }
        | Op::I32Load16sOffset16 { result, ptr, .. }
        | Op::I32Load16uOffset16 { result, ptr, .. } => {
            vec![*result, *ptr]
        }

        Op::Store32Offset16 { ptr, value, .. } | Op::I32Store8Offset16 { ptr, value, .. } => {
            vec![*ptr, *value]
        }

        Op::I32StoreOffset16Imm16 { ptr, .. } => {
            vec![*ptr]
        }

        Op::I32Load8s { result, .. }
        | Op::I32Load8u { result, .. }
        | Op::I32Load16s { result, .. }
        | Op::I32Load16u { result, .. }
        | Op::CopyImm32 { result, .. } => {
            vec![*result]
        }

        Op::Copy { result, value } => {
            vec![*result, *value]
        }

        Op::BranchI32EqImm16 { lhs, .. }
        | Op::BranchI32NeImm16 { lhs, .. }
        | Op::BranchI32LtUImm16Rhs { lhs, .. }
        | Op::BranchI32LeSImm16Rhs { lhs, .. } => {
            vec![*lhs]
        }

        Op::BranchI32LeUImm16Lhs { rhs, .. } => {
            vec![*rhs]
        }

        Op::BranchI32Ne { lhs, rhs, .. } | Op::BranchI32LeU { lhs, rhs, .. } => {
            vec![*lhs, *rhs]
        }

        Op::Copy2 { results, values } => {
            let result_slots = results.to_array();
            vec![result_slots[0], result_slots[1], values[0], values[1]]
        }

        Op::Slot2 { slots } => {
            vec![slots[0], slots[1]]
        }

        Op::GlobalGet { result, .. } => {
            vec![*result]
        }

        Op::GlobalSet { input, .. } => {
            vec![*input]
        }

        Op::GlobalSetI32Imm16 { .. } | Op::GlobalSetI64Imm16 { .. } => {
            vec![]
        }

        Op::Branch { .. } => {
            vec![]
        }

        Op::BranchTable0 { index, .. } => {
            vec![*index]
        }

        Op::BranchTableSpan { index, .. } => {
            vec![*index]
        }

        _ => {
            panic!("Unsupported instruction in JIT: {:?}", op);
        }
    }
}

fn build_slot_register_map(trace: &[TraceEntry]) -> HashMap<Slot, u8> {
    let mut slot_reg_map: HashMap<Slot, u8> = HashMap::new();
    let registers = [
        reg::RBX,
        reg::RCX,
        reg::RSI,
        reg::R8,
        reg::R9,
        reg::R10,
        reg::R11,
    ];
    let mut unused_reg_index = 0;

    for entry in trace {
        let slots = extract_slots(&entry.op);
        for slot in slots {
            if slot.is_const() {
                continue;
            }
            if slot_reg_map.contains_key(&slot) {
                continue;
            }
            if unused_reg_index >= registers.len() {
                panic!("Not enough registers to allocate for slots");
            }
            let reg = registers[unused_reg_index];
            slot_reg_map.insert(slot, reg);
            unused_reg_index += 1;
        }
    }

    slot_reg_map
}

pub fn compile_trace(trace: &[TraceEntry], fs: &FrameSlots) -> io::Result<JitCode> {
    debug_println!("{:#?}", trace);
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

    let slot_reg_map = build_slot_register_map(trace);
    let mut ctx = JitContext::new(buffer as *mut u8, slot_reg_map, fs);
    let start = ctx.buffer;

    ctx.emit_prologue();

    let loop_start_offset = ctx.get_offset();
    let mut guard_exits: Vec<(usize, *const Op)> = Vec::new();

    let mut i = 0;
    while i < trace.len() {
        let entry = &trace[i];

        match entry.op {
            Op::I64Add { result, lhs, rhs } => {
                ctx.emit_i64_add(result, lhs, rhs);
            }
            Op::I64RemU { result, lhs, rhs } => {
                ctx.emit_i64_rem_u(result, lhs, rhs);
            }
            Op::I32Add { result, lhs, rhs } => {
                ctx.emit_i32_add(result, lhs, rhs);
            }
            Op::I32Sub { result, lhs, rhs } => {
                ctx.emit_i32_sub(result, lhs, rhs);
            }
            Op::I32Mul { result, lhs, rhs } => {
                ctx.emit_i32_mul(result, lhs, rhs);
            }
            Op::I32DivS { result, lhs, rhs } => {
                ctx.emit_i32_div_s(result, lhs, rhs);
            }
            Op::I32DivU { result, lhs, rhs } => {
                ctx.emit_i32_div_u(result, lhs, rhs);
            }
            Op::I32RemS { result, lhs, rhs } => {
                ctx.emit_i32_rem_s(result, lhs, rhs);
            }
            Op::I32RemU { result, lhs, rhs } => {
                ctx.emit_i32_rem_u(result, lhs, rhs);
            }
            Op::I32RemUImm16Rhs { result, lhs, rhs } => {
                let rhs_nonzero = std::num::NonZeroU32::from(rhs);
                let rhs_val = rhs_nonzero.get();
                ctx.emit_i32_rem_u_imm16_rhs(result, lhs, rhs_val);
            }
            Op::I32BitAnd { result, lhs, rhs } => {
                ctx.emit_i32_bitand(result, lhs, rhs);
            }
            Op::I32BitAndImm16 { result, lhs, rhs } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                ctx.emit_i32_bitand_imm16(result, lhs, rhs_val);
            }
            Op::I32BitOr { result, lhs, rhs } => {
                ctx.emit_i32_bitor(result, lhs, rhs);
            }
            Op::I32BitOrImm16 { result, lhs, rhs } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                ctx.emit_i32_bitor_imm16(result, lhs, rhs_val);
            }
            Op::I32BitXor { result, lhs, rhs } => {
                ctx.emit_i32_bitxor(result, lhs, rhs);
            }
            Op::I32BitXorImm16 { result, lhs, rhs } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                ctx.emit_i32_bitxor_imm16(result, lhs, rhs_val);
            }
            Op::I32ShlBy { result, lhs, rhs } => {
                let shift_amount = i32::from(rhs) as u8;
                ctx.emit_i32_shl_by(result, lhs, shift_amount);
            }
            Op::Load32Offset16 {
                result,
                ptr,
                offset,
            } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                ctx.emit_load32_offset16(result, ptr, offset_val);
            }
            Op::Store32Offset16 { ptr, offset, value } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                ctx.emit_store32_offset16(ptr, offset_val, value);
            }
            Op::I32StoreOffset16Imm16 { ptr, offset, value } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                let value_val = i32::from(value);
                ctx.emit_store32_offset16_imm16(ptr, offset_val, value_val);
            }
            Op::I32Store8Offset16 { ptr, offset, value } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                ctx.emit_store8_offset16(ptr, offset_val, value);
            }
            Op::I32Load8sOffset16 {
                result,
                ptr,
                offset,
            } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                ctx.emit_load8s_offset16(result, ptr, offset_val);
            }
            Op::I32Load8uOffset16 {
                result,
                ptr,
                offset,
            } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                ctx.emit_load8u_offset16(result, ptr, offset_val);
            }
            Op::I32Load16sOffset16 {
                result,
                ptr,
                offset,
            } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                ctx.emit_load16s_offset16(result, ptr, offset_val);
            }
            Op::I32Load16uOffset16 {
                result,
                ptr,
                offset,
            } => {
                use crate::ir::Offset64;
                let offset_val = u64::from(Offset64::from(offset)) as u16;
                ctx.emit_load16u_offset16(result, ptr, offset_val);
            }
            Op::I32Load8s { result, offset_lo } => {
                use crate::ir::Offset64;
                let mut next_ip = entry.ip.clone();
                next_ip.add(1);
                let (ptr, offset_hi) = next_ip
                    .get()
                    .filter_register_and_offset_hi()
                    .expect("I32Load8s must be followed by SlotAndImm32");
                let offset = Offset64::combine(offset_hi, offset_lo);
                ctx.emit_load8s_offset16(result, ptr, u64::from(offset) as u16);
            }
            Op::I32Load8u { result, offset_lo } => {
                use crate::ir::Offset64;
                let mut next_ip = entry.ip.clone();
                next_ip.add(1);
                let (ptr, offset_hi) = next_ip
                    .get()
                    .filter_register_and_offset_hi()
                    .expect("I32Load8u must be followed by SlotAndImm32");
                let offset = Offset64::combine(offset_hi, offset_lo);
                ctx.emit_load8u_offset16(result, ptr, u64::from(offset) as u16);
            }
            Op::I32Load16s { result, offset_lo } => {
                use crate::ir::Offset64;
                let mut next_ip = entry.ip.clone();
                next_ip.add(1);
                let (ptr, offset_hi) = next_ip
                    .get()
                    .filter_register_and_offset_hi()
                    .expect("I32Load16s must be followed by SlotAndImm32");
                let offset = Offset64::combine(offset_hi, offset_lo);
                ctx.emit_load16s_offset16(result, ptr, u64::from(offset) as u16);
            }
            Op::I32Load16u { result, offset_lo } => {
                use crate::ir::Offset64;
                let mut next_ip = entry.ip.clone();
                next_ip.add(1);
                let (ptr, offset_hi) = next_ip
                    .get()
                    .filter_register_and_offset_hi()
                    .expect("I32Load16u must be followed by SlotAndImm32");
                let offset = Offset64::combine(offset_hi, offset_lo);
                ctx.emit_load16u_offset16(result, ptr, u64::from(offset) as u16);
            }
            Op::I32EqImm16 { result, lhs, rhs } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                ctx.emit_i32_eq_imm16(result, lhs, rhs_val);
            }
            Op::BranchI32NeImm16 { lhs, rhs, .. } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                let taken = if i + 1 < trace.len() {
                    (trace[i + 1].ip.ptr as usize - entry.ip.ptr as usize) != OP_SIZE
                } else {
                    true
                };
                let is_last = i == trace.len() - 1;
                ctx.emit_branch_i32_cmp_imm16(
                    lhs,
                    rhs_val,
                    BranchCond::Ne,
                    taken,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::BranchI32EqImm16 { lhs, rhs, .. } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                let taken = if i + 1 < trace.len() {
                    (trace[i + 1].ip.ptr as usize - entry.ip.ptr as usize) != OP_SIZE
                } else {
                    true
                };
                let is_last = i == trace.len() - 1;
                ctx.emit_branch_i32_cmp_imm16(
                    lhs,
                    rhs_val,
                    BranchCond::Eq,
                    taken,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::BranchI32Ne { lhs, rhs, .. } => {
                let taken = if i + 1 < trace.len() {
                    (trace[i + 1].ip.ptr as usize - entry.ip.ptr as usize) != OP_SIZE
                } else {
                    true
                };
                let is_last = i == trace.len() - 1;
                ctx.emit_branch_i32_cmp(
                    lhs,
                    rhs,
                    BranchCond::Ne,
                    taken,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::BranchI32LeU { lhs, rhs, .. } => {
                let taken = if i + 1 < trace.len() {
                    (trace[i + 1].ip.ptr as usize - entry.ip.ptr as usize) != OP_SIZE
                } else {
                    true
                };
                let is_last = i == trace.len() - 1;
                ctx.emit_branch_i32_cmp(
                    lhs,
                    rhs,
                    BranchCond::LeU,
                    taken,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::Copy2 { results, values } => {
                let result_slots = results.to_array();
                ctx.emit_copy2(result_slots, values);
            }
            Op::I32AddImm16 { result, lhs, rhs } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                ctx.emit_i32_add_imm16(result, lhs, rhs_val);
            }
            Op::CopyImm32 { result, value } => {
                ctx.emit_copy_imm32(result, u32::from(value));
            }
            Op::Copy { result, value } => {
                ctx.emit_copy(result, value);
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
                ctx.emit_select_i32_eq_imm16(result, lhs, rhs_val, true_val, false_val);
            }
            Op::BranchI32LtUImm16Rhs { lhs, rhs, .. } => {
                let rhs_val = i16::try_from(u32::from(rhs)).unwrap();
                let taken = if i + 1 < trace.len() {
                    (trace[i + 1].ip.ptr as usize - entry.ip.ptr as usize) != OP_SIZE
                } else {
                    true
                };
                let is_last = i == trace.len() - 1;
                ctx.emit_branch_i32_cmp_imm16(
                    lhs,
                    rhs_val,
                    BranchCond::LtU,
                    taken,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::BranchI32LeSImm16Rhs { lhs, rhs, .. } => {
                let rhs_val = i16::try_from(i32::from(rhs)).unwrap();
                let taken = if i + 1 < trace.len() {
                    (trace[i + 1].ip.ptr as usize - entry.ip.ptr as usize) != OP_SIZE
                } else {
                    true
                };
                let is_last = i == trace.len() - 1;
                ctx.emit_branch_i32_cmp_imm16(
                    lhs,
                    rhs_val,
                    BranchCond::LeS,
                    taken,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::BranchI32LeUImm16Lhs { lhs, rhs, .. } => {
                let lhs_val = i16::try_from(u32::from(lhs)).unwrap();
                let taken = if i + 1 < trace.len() {
                    (trace[i + 1].ip.ptr as usize - entry.ip.ptr as usize) != OP_SIZE
                } else {
                    true
                };
                let is_last = i == trace.len() - 1;
                ctx.emit_branch_i32_cmp_imm16_lhs_le_u(
                    lhs_val,
                    rhs,
                    taken,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::GlobalGet { result, global } => {
                assert_eq!(u32::from(global), 0, "JIT only supports global 0");
                ctx.emit_global_get(result);
            }
            Op::GlobalSet { input, global } => {
                assert_eq!(u32::from(global), 0, "JIT only supports global 0");
                ctx.emit_global_set(input);
            }
            Op::GlobalSetI32Imm16 { input, global } => {
                assert_eq!(u32::from(global), 0, "JIT only supports global 0");
                ctx.emit_global_set_imm(i32::from(input) as u64);
            }
            Op::GlobalSetI64Imm16 { input, global } => {
                assert_eq!(u32::from(global), 0, "JIT only supports global 0");
                ctx.emit_global_set_imm(i64::from(input) as u64);
            }
            Op::Branch { .. } => {
                let is_last = i == trace.len() - 1;
                ctx.emit_branch(is_last, loop_start_offset);
            }
            Op::BranchTable0 { index, len_targets } => {
                // Calculate which target was selected based on the next trace entry's IP
                let expected_index = if i + 1 < trace.len() {
                    let next_ip = trace[i + 1].ip.ptr as usize;
                    let current_ip = entry.ip.ptr as usize;
                    let offset = (next_ip - current_ip) / OP_SIZE;
                    // offset=1 means target 0, offset=2 means target 1, etc.
                    // If offset > len_targets, it's the default (len_targets - 1)
                    cmp::min(offset as u32 - 1, len_targets - 1)
                } else {
                    // Last in trace, assume default target
                    len_targets - 1
                };

                let is_last = i == trace.len() - 1;
                ctx.emit_branch_table_0(
                    index,
                    expected_index,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            Op::BranchTableSpan { index, len_targets } => {
                // Calculate which target was selected
                // BranchTableSpan layout:
                //   ip+0: BranchTableSpan
                //   ip+1: SlotSpan (source values)
                //   ip+2: BranchTableTarget[0]
                //   ip+3: BranchTableTarget[1]
                //   ...
                //   ip+1+len_targets: BranchTableTarget[len_targets-1] (default)

                // Get the SlotSpan (source values) from ip+1
                let mut slot_span_ip = entry.ip.clone();
                slot_span_ip.add(1);
                let values_span = match *slot_span_ip.get() {
                    Op::SlotSpan { span } => span,
                    _ => panic!("Expected SlotSpan after BranchTableSpan"),
                };

                // Calculate expected_index based on trace
                let expected_index = if i + 1 < trace.len() {
                    let next_ip = trace[i + 1].ip.ptr as usize;

                    // The BranchTableTarget at offset (2 + target_index) contains the branch offset
                    // We need to figure out which target was selected by examining where we jumped
                    // For now, try to find which BranchTableTarget leads to next_ip
                    let mut found_index = len_targets - 1; // default
                    for target_idx in 0..len_targets {
                        let mut target_ip = entry.ip.clone();
                        target_ip.add(2 + target_idx as usize);
                        if let Op::BranchTableTarget { offset, .. } = *target_ip.get() {
                            // Calculate the destination IP for this target
                            let target_dest = (target_ip.ptr as isize
                                + offset.to_i32() as isize * OP_SIZE as isize)
                                as usize;
                            if target_dest == next_ip {
                                found_index = target_idx;
                                break;
                            }
                        }
                    }
                    found_index
                } else {
                    len_targets - 1
                };

                // Get the BranchTableTarget for the expected index
                let mut target_ip = entry.ip.clone();
                target_ip.add(2 + expected_index as usize);
                let results_span = match *target_ip.get() {
                    Op::BranchTableTarget { results, .. } => results,
                    _ => panic!("Expected BranchTableTarget"),
                };

                let is_last = i == trace.len() - 1;
                ctx.emit_branch_table_span(
                    index,
                    expected_index,
                    values_span,
                    results_span,
                    &mut guard_exits,
                    entry.ip.ptr,
                    is_last,
                    loop_start_offset,
                );
            }
            _ => panic!("Unsupported instruction in trace: {:?}", entry.op),
        }

        i += 1;
    }

    ctx.emit_branch(true, loop_start_offset);

    for (jmp_offset, next_ip) in guard_exits {
        let epilogue_start = ctx.get_offset();

        ctx.emit_epilogue(next_ip);

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

    // print_code(ctx.get_offset(), start);

    Ok(JitCode {
        func,
        buffer: start
    })
}

fn print_code(code_size: usize, start: *mut u8) {
    debug_println!("Generated machine code ({} bytes):", code_size);
    let code_slice = unsafe { std::slice::from_raw_parts(start, code_size) };
    for (i, chunk) in code_slice.chunks(16).enumerate() {
        debug_print!("{:04x}: ", i * 16);
        for byte in chunk {
            debug_print!("{:02x} ", byte);
        }
        debug_println!();
    }

    debug_println!("\nDisassembly:");
    match capstone::Capstone::new()
        .x86()
        .mode(capstone::arch::x86::ArchMode::Mode64)
        .build()
    {
        Ok(cs) => match cs.disasm_all(code_slice, start as u64) {
            Ok(insns) => {
                for insn in insns.iter() {
                    let bytes_str = insn
                        .bytes()
                        .iter()
                        .map(|b| std::format!("{:02x}", b))
                        .collect::<Vec<_>>()
                        .join(" ");
                    let asm_str = std::format!(
                        "{} {}",
                        insn.mnemonic().unwrap_or(""),
                        insn.op_str().unwrap_or("")
                    );
                    debug_println!(
                        "{:04x}: {:30} {}",
                        insn.address() - start as u64,
                        bytes_str,
                        asm_str
                    );
                }
            }
            Err(e) => debug_println!("Disassembly failed: {}", e),
        },
        Err(e) => debug_println!("Capstone init failed: {}", e),
    }
}
