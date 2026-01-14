メモ

```
cargo run -p wasmi_cli --release -- --help
```

スロットの値を見る
```rust
std::println!("slot(2): {:?}", unsafe { u64::from(self.sp.get(Slot::from(2))) });
std::println!("slot(3): {:?}", unsafe { u64::from(self.sp.get(Slot::from(3))) });
std::println!("slot(4): {:?}", unsafe { u64::from(self.sp.get(Slot::from(4))) });
```

- レジスタを有効活用できるようにする
  - スロット番号とレジスタのマップ

メモリ操作について
線形メモリのポインタが無効になる可能性がある命令はJIT対象外とする
- Op::MemoryGrow
- Op::Call / CallIndirect：関数呼び出し（ホスト関数がgrowする可能性）
- Op::Return：インスタンス切り替えの可能性

hello-world.bf.wasm
[
  TraceEntry {
      op: I32Load8s {
          result: Slot(
              7,
          ),
          offset_lo: Offset64Lo(
              1049816,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152ae8,
      },
  },
  TraceEntry {
      op: BranchI32LeSImm16Rhs {
          lhs: Slot(
              7,
          ),
          rhs: Const16 {
              inner: AnyConst16 {
                  bits: 65535,
              },
              marker: PhantomData<fn() -> i32>,
          },
          offset: BranchOffset16(
              4,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152af8,
      },
  },
  TraceEntry {
      op: I32AddImm16 {
          result: Slot(
              6,
          ),
          lhs: Slot(
              6,
          ),
          rhs: Const16 {
              inner: AnyConst16 {
                  bits: 1,
              },
              marker: PhantomData<fn() -> i32>,
          },
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152b00,
      },
  },
  TraceEntry {
      op: I32BitAndImm16 {
          result: Slot(
              7,
          ),
          lhs: Slot(
              7,
          ),
          rhs: Const16 {
              inner: AnyConst16 {
                  bits: 255,
              },
              marker: PhantomData<fn() -> i32>,
          },
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152b08,
      },
  },
  TraceEntry {
      op: Branch {
          offset: BranchOffset(
              29,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152b10,
      },
  },
  TraceEntry {
      op: I32AddImm16 {
          result: Slot(
              11,
          ),
          lhs: Slot(
              7,
          ),
          rhs: Const16 {
              inner: AnyConst16 {
                  bits: 65493,
              },
              marker: PhantomData<fn() -> i32>,
          },
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152bf8,
      },
  },
  TraceEntry {
      op: BranchTable0 {
          index: Slot(
              11,
          ),
          len_targets: 52,
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152c00,
      },
  },
  TraceEntry {
      op: Branch {
          offset: BranchOffset(
              35,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152ca0,
      },
  },
  TraceEntry {
      op: Load32Offset16 {
          result: Slot(
              12,
          ),
          ptr: Slot(
              0,
          ),
          offset: Offset16(
              Const16 {
                  inner: AnyConst16 {
                      bits: 4,
                  },
                  marker: PhantomData<fn() -> u64>,
              },
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152db8,
      },
  },
  TraceEntry {
      op: BranchI32Ne {
          lhs: Slot(
              4,
          ),
          rhs: Slot(
              12,
          ),
          offset: BranchOffset16(
              4,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152dc0,
      },
  },
  TraceEntry {
      op: Load32Offset16 {
          result: Slot(
              1,
          ),
          ptr: Slot(
              0,
          ),
          offset: Offset16(
              Const16 {
                  inner: AnyConst16 {
                      bits: 8,
                  },
                  marker: PhantomData<fn() -> u64>,
              },
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152de0,
      },
  },
  TraceEntry {
      op: I32ShlBy {
          result: Slot(
              12,
          ),
          lhs: Slot(
              4,
          ),
          rhs: ShiftAmount {
              value: Const16 {
                  inner: AnyConst16 {
                      bits: 3,
                  },
                  marker: PhantomData<fn() -> i32>,
              },
          },
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152de8,
      },
  },
  TraceEntry {
      op: I32Add {
          result: Slot(
              11,
          ),
          lhs: Slot(
              1,
          ),
          rhs: Slot(
              12,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152df0,
      },
  },
  TraceEntry {
      op: I32StoreOffset16Imm16 {
          ptr: Slot(
              11,
          ),
          offset: Offset16(
              Const16 {
                  inner: AnyConst16 {
                      bits: 0,
                  },
                  marker: PhantomData<fn() -> u64>,
              },
          ),
          value: Const16 {
              inner: AnyConst16 {
                  bits: 0,
              },
              marker: PhantomData<fn() -> i32>,
          },
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152df8,
      },
  },
  TraceEntry {
      op: I32AddImm16 {
          result: Slot(
              4,
          ),
          lhs: Slot(
              4,
          ),
          rhs: Const16 {
              inner: AnyConst16 {
                  bits: 1,
              },
              marker: PhantomData<fn() -> i32>,
          },
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152e00,
      },
  },
  TraceEntry {
      op: Branch {
          offset: BranchOffset(
              109,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245152e08,
      },
  },
  TraceEntry {
      op: Store32Offset16 {
          ptr: Slot(
              0,
          ),
          offset: Offset16(
              Const16 {
                  inner: AnyConst16 {
                      bits: 12,
                  },
                  marker: PhantomData<fn() -> u64>,
              },
          ),
          value: Slot(
              4,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245153170,
      },
  },
  TraceEntry {
      op: Copy {
          result: Slot(
              3,
          ),
          value: Slot(
              1,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245153178,
      },
  },
  TraceEntry {
      op: BranchI32NeImm16 {
          lhs: Slot(
              6,
          ),
          rhs: Const16 {
              inner: AnyConst16 {
                  bits: 107,
              },
              marker: PhantomData<fn() -> i32>,
          },
          offset: BranchOffset16(
              -211,
          ),
      },
      ip: InstructionPtr {
          ptr: 0x0000564245153180,
      },
  },
]



| Continuous Integration |     Test Coverage    |  Documentation   |      Crates.io       |
|:----------------------:|:--------------------:|:----------------:|:--------------------:|
| [![ci][1]][2]          | [![codecov][3]][4]   | [![docs][5]][6] | [![crates][7]][8]  |

[1]: https://github.com/wasmi-labs/wasmi/actions/workflows/rust.yml/badge.svg
[2]: https://github.com/wasmi-labs/wasmi/actions/workflows/rust.yml
[3]: https://codecov.io/gh/wasmi-labs/wasmi/branch/main/badge.svg
[4]: https://codecov.io/gh/wasmi-labs/wasmi/branch/main
[5]: https://docs.rs/wasmi/badge.svg
[6]: https://docs.rs/wasmi
[7]: https://img.shields.io/crates/v/wasmi.svg
[8]: https://crates.io/crates/wasmi

[license-mit-badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license-apache-badge]: https://img.shields.io/badge/license-APACHE-orange.svg

# Wasmi - WebAssembly (Wasm) Interpreter

<p align="center">
  <img src="./resources/wasmi-logo.png" width="100" height="100">
</p>

Wasmi is an efficient and lightweight WebAssembly interpreter with a focus on constrained and embedded systems.

## Distinct Features

- Simple, correct and deterministic execution of WebAssembly.
- Efficient and cross-platform WebAssembly runtime for [`no_std` embedded environments](https://doc.rust-lang.org/stable/rustc/platform-support.html).
- Compiler/JIT bomb resisting translation.
- Loosely mirrors the [Wasmtime API](https://docs.rs/wasmtime/) to act as drop-in replacement.
- 100% WebAssembly spec testsuite compliance.
- Built-in support for fuel metering.
- Supports the official [Wasm C-API](https://github.com/WebAssembly/wasm-c-api).

## Security Audits

Wasmi is suitable for safety critical use cases and has been audited twice.

| Wasmi Version(s) | Auditor | Contractor | Report |
|--:|:--|:--|:--|
| `0.36.0`-`0.38.0` | [Runtime Verification Inc.] | [Stellar Development Foundation] | [PDF](./resources/audit-2024-11-27.pdf) |
| `0.31.0` | [SRLabs] | [Parity Technologies] | [PDF](./resources/audit-2023-12-20.pdf) |

[Wasmtime]: https://github.com/bytecodealliance/wasmtime
[SRLabs]: https://www.srlabs.de/
[Runtime Verification Inc.]: https://runtimeverification.com/
[Stellar Development Foundation]: https://stellar.org/foundation
[Parity Technologies]: https://www.parity.io/

## Docs

- 📖 [Usage Guide](./docs/usage.md): learn how to use the [Wasmi API](https://crates.io/crates/wasmi) properly.
- 🛠️ [Development Guide](./docs/developement.md): learn how to develop for Wasmi.
- ✨ [Crate Features](https://docs.rs/wasmi/latest/wasmi/#crate-features): learn about `wasmi` crate features.

## WebAssembly Features

| | WebAssembly Proposal | | | | WebAssembly Proposal | |
|:-:|:--|:--|:-:|:--|:--|:--|
| ✅ | [`mutable-global`] | ≥ `0.14.0` | | ✅ | [`custom-page-sizes`] | [≥ `0.41.0`][(#1197)] |
| ✅ | [`saturating-float-to-int`] | ≥ `0.14.0` | | ✅ | [`memory64`] | [≥ `0.41.0`][(#1357)] |
| ✅ | [`sign-extension`] | ≥ `0.14.0` | | ✅ | [`wide-arithmetic`] | [≥ `0.42.0`][(#1369)] |
| ✅ | [`multi-value`] | ≥ `0.14.0` | | ✅ | [`simd`] | [≥ `0.43.0`][(#1364)] |
| ✅ | [`bulk-memory`] | [≥ `0.24.0`][(#628)] | | ✅ | [`relaxed-simd`] | [≥ `0.44.0`][(#1443)] |
| ✅ | [`reference-types`] | [≥ `0.24.0`][(#635)] | | 📅 | [`function-references`] | [Tracking Issue][(#774)] |
| ✅ | [`tail-calls`] | [≥ `0.28.0`][(#683)] | | 📅 | [`gc`] | [Tracking Issue][(#775)] |
| ✅ | [`extended-const`] | [≥ `0.29.0`][(#707)] | | 📅 | [`threads`] | [Tracking Issue][(#777)] |
| ✅ | [`multi-memory`] | [≥ `0.37.0`][(#1191)] | | 📅 | [`exception-handling`] | [Tracking Issue][(#1037)] |

| | Embeddings | |
|:-:|:--|:--|
| ✅ | [WASI] | WASI (`wasip1`) support via the [`wasmi_wasi` crate]. |
| ✅ | [C-API] | Official Wasm C-API support via the [`wasmi_c_api_impl` crate]. |

[`mutable-global`]: https://github.com/WebAssembly/mutable-global
[`saturating-float-to-int`]: https://github.com/WebAssembly/nontrapping-float-to-int-conversions
[`sign-extension`]: https://github.com/WebAssembly/sign-extension-ops
[`multi-value`]: https://github.com/WebAssembly/multi-value
[`reference-types`]: https://github.com/WebAssembly/reference-types
[`bulk-memory`]: https://github.com/WebAssembly/bulk-memory-operations
[`simd` ]: https://github.com/webassembly/simd
[`tail-calls`]: https://github.com/WebAssembly/tail-call
[`extended-const`]: https://github.com/WebAssembly/extended-const
[`function-references`]: https://github.com/WebAssembly/function-references
[`gc`]: https://github.com/WebAssembly/gc
[`multi-memory`]: https://github.com/WebAssembly/multi-memory
[`threads`]: https://github.com/WebAssembly/threads
[`relaxed-simd`]: https://github.com/WebAssembly/relaxed-simd
[`exception-handling`]: https://github.com/WebAssembly/exception-handling
[`custom-page-sizes`]: https://github.com/WebAssembly/custom-page-sizes
[`memory64`]: https://github.com/WebAssembly/memory64
[`wide-arithmetic`]: https://github.com/WebAssembly/wide-arithmetic

[WASI]: https://github.com/WebAssembly/WASI
[C-API]: https://github.com/WebAssembly/wasm-c-api
[`wasmi_wasi` crate]: ./crates/wasi
[`wasmi_c_api_impl` crate]: ./crates/c_api

[(#363)]: https://github.com/wasmi-labs/wasmi/issues/363
[(#364)]: https://github.com/wasmi-labs/wasmi/issues/364
[(#496)]: https://github.com/wasmi-labs/wasmi/issues/496
[(#628)]: https://github.com/wasmi-labs/wasmi/pull/628
[(#635)]: https://github.com/wasmi-labs/wasmi/pull/635
[(#638)]: https://github.com/wasmi-labs/wasmi/pull/638
[(#683)]: https://github.com/wasmi-labs/wasmi/pull/683
[(#707)]: https://github.com/wasmi-labs/wasmi/pull/707
[(#774)]: https://github.com/wasmi-labs/wasmi/pull/774
[(#775)]: https://github.com/wasmi-labs/wasmi/pull/775
[(#776)]: https://github.com/wasmi-labs/wasmi/pull/776
[(#777)]: https://github.com/wasmi-labs/wasmi/pull/777
[(#1037)]: https://github.com/wasmi-labs/wasmi/issues/1137
[(#1197)]: https://github.com/wasmi-labs/wasmi/issues/1197
[(#1191)]: https://github.com/wasmi-labs/wasmi/issues/1191
[(#1357)]: https://github.com/wasmi-labs/wasmi/issues/1357
[(#1364)]: https://github.com/wasmi-labs/wasmi/issues/1364
[(#1369)]: https://github.com/wasmi-labs/wasmi/issues/1369
[(#1443)]: https://github.com/wasmi-labs/wasmi/pull/1443

## Used by

If you want your project on this list [please inform me](mailto:robin.freyler@gmail.com) about you project and how Wasmi is used.

<a href="https://stellar.org/soroban">
  <picture>
    <source srcset="./resources/logos/users/soroban-white.svg" media="(prefers-color-scheme: dark)">
    <source srcset="./resources/logos/users/soroban-black.svg" media="(prefers-color-scheme: light)">
    <img
      src="./resources/logos/users/soroban-black.svg"
      height="32"
      style="vertical-align: middle;"
      alt="Stellar Soroban"
    />
  </picture>
</a>&nbsp;
<a href="https://wasmer.io">
  <img
    src="./resources/logos/users/wasmer.svg"
    height="32" style="vertical-align: middle;" alt="Wasmer"
  />
</a>&nbsp;
<a href="https://fireflyzero.com">
  <img
    src="./resources/logos/users/firefly-zero.png"
    height="32" style="vertical-align: middle;" alt="Firefly Zero"
  />
</a>&nbsp;
<a href="https://typst.app">
  <img
    src="./resources/logos/users/typst.png"
    height="32" style="vertical-align: middle;" alt="Typst"
  />
</a>&nbsp;
<a href="https://orbitinghail.dev">
  <picture>
    <source srcset="./resources/logos/users/orbitinghail-white.png" media="(prefers-color-scheme: dark)">
    <source srcset="./resources/logos/users/orbitinghail-black.png" media="(prefers-color-scheme: light)">
    <img
      src="./resources/logos/users/orbitinghail-black.svg"
      height="32"
      style="vertical-align: middle;"
      alt="Orbitinghail"
    />
  </picture>
</a>&nbsp;
<a href="https://github.com/smol-dot/smoldot">
  <img
    src="./resources/logos/users/smoldot.png"
    height="32" style="vertical-align: middle;" alt="Smoldot"
  />
</a>&nbsp;
<a href="https://github.com/Askannz/munal-os">
  <img
    src="./resources/logos/users/munal-os.png"
    height="32" style="vertical-align: middle;" alt="Munal OS"
  />
</a>&nbsp;
<a href="https://github.com/unicode-org/icu4x">
  <img
    src="./resources/logos/users/icu4x.png"
    height="32" style="vertical-align: middle;" alt="icu4x"
  />
</a>&nbsp;
<a href="https://github.com/Uni-Gal/Ayaka">
  <img
    src="./resources/logos/users/ayaka.png"
    height="32" style="vertical-align: middle;" alt="Ayaka"
  />
</a>&nbsp;
<a href="https://github.com/project-oak/oak">
  <picture>
    <source srcset="./resources/logos/users/project-oak-dark.svg" media="(prefers-color-scheme: dark)">
    <source srcset="./resources/logos/users/project-oak-light.svg" media="(prefers-color-scheme: light)">
    <img
      src="./resources/logos/users/project-oak-light.svg"
      height="32"
      style="vertical-align: middle;"
      alt="Project Oak"
    />
  </picture>
</a>&nbsp;

## Sponsors

Special thanks to the past and present sponsors of the Wasmi project.

<table>
  <tr>
    <td align="center" style="padding: 10px; width: 200px;">
      <div style="height: 50px; display: flex; flex-direction: column; justify-content: flex-end;">
        <a href="https://stellar.org/foundation">
          <picture>
            <source srcset="./resources/logos/sponsors/sdf-white.svg" media="(prefers-color-scheme: dark)">
            <source srcset="./resources/logos/sponsors/sdf-black.svg" media="(prefers-color-scheme: light)">
            <img
              src="./resources/logos/sponsors/sdf-black.svg"
              height="64"
              alt="Stellar Development Foundation"
              style="display: inline-block"
            />
          </picture>
        </a>
      </div>
      <div><sub>Sponsoring since Oct. 2024</sub></div>
    </td>
    <td align="center" style="padding: 10px; width: 200px;">
      <div style="height: 50px; display: flex; flex-direction: column; justify-content: flex-end;">
        <a href="https://parity.io">
          <img
            src="./resources/logos/sponsors/parity.svg"
            height="32"
            alt="Parity Technologies"
          />
        </a>
      </div>
      <div><sub>Sponsored until Oct. 2024</sub></div>
    </td>
  </tr>
</table>

## License

Licensed under either of

  * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or <https://www.apache.org/licenses/LICENSE-2.0>)
  * MIT license ([LICENSE-MIT](LICENSE-MIT) or <https://opensource.org/licenses/MIT>)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the work by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without any additional terms or conditions.
