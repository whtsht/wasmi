#!/bin/env bash
cargo run -p wasmi_cli -q --release -- fib.wasm --invoke _start
cargo run -p wasmi_cli -q --release -- memory.wasm --invoke _start
cargo run -p wasmi_cli -q --release -- hello-world-bf.wasm --invoke _start
echo 20 | cargo run -p wasmi_cli -q --release -- factor-bf.wasm --invoke _start
cargo run -p wasmi_cli -q --release -- --dir . lua.wasm ./factorize.lua
cargo run -p wasmi_cli -q --release -- --dir . lua.wasm ./fibonacci.lua
