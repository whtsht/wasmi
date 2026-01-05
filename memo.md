```rust
[
  TraceEntry {
    op: I64Add { result: Slot(6), lhs: Slot(2), rhs: Slot(3) },
    ip: InstructionPtr { ptr: 0x559b6d9baab0 }
  },
  TraceEntry {
    op: I64RemU { result: Slot(4), lhs: Slot(6), rhs: Slot(-1) },
    ip: InstructionPtr { ptr: 0x559b6d9baab8 }
    },
  TraceEntry {
     op: I32EqImm16 { result: Slot(5), lhs: Slot(1), rhs: Const16 { inner: AnyConst16 { bits: 1000 }, marker: PhantomData<fn() -> i32> } },
     ip: InstructionPtr { ptr: 0x559b6d9baac0 }
    },
  TraceEntry {
     op: BranchI32NeImm16 { lhs: Slot(5), rhs: Const16 { inner: AnyConst16 { bits: 0 }, marker: PhantomData<fn() -> i32> }, offset: BranchOffset16(7) }, ip: InstructionPtr { ptr: 0x559b6d9baac8 }
    },
  TraceEntry {
     op: Copy2 { results: FixedSlotSpan { span: SlotSpan(Slot(2)) }, values: [Slot(4), Slot(2)] },
     ip: InstructionPtr { ptr: 0x559b6d9baad0 } }, 

  TraceEntry {
     op: I32AddImm16 { result: Slot(7), lhs: Slot(1), rhs: Const16 { inner: AnyConst16 { bits: 1 }, marker: PhantomData<fn() -> i32> } }, ip: InstructionPtr { ptr: 0x559b6d9baad8 } }, 

  TraceEntry { op: CopyImm32 { result: Slot(6), value: AnyConst32 { bits: 1000 } }, ip: InstructionPtr { ptr: 0x559b6d9baae0 } }, 

  TraceEntry { op: SelectI32EqImm16 { result: Slot(1), lhs: Slot(5), rhs: Const16 { inner: AnyConst16 { bits: 0 }, marker: PhantomData<fn() -> i32> } }, ip: InstructionPtr { ptr: 0x559b6d9baae8 } }, 

  TraceEntry { op: BranchI32LtUImm16Rhs { lhs: Slot(1), rhs: Const16 { inner: AnyConst16 { bits: 1001 }, marker: PhantomData<fn() -> u32> }, offset: BranchOffset16(-9) }, ip: InstructionPtr { ptr: 0x559b6d9baaf8 } }
]
```
