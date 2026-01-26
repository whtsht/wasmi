(module $bf-9cbefc742d8bbec8.wasm
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (import "env" "backedge" (func $backedge (type 0)))
  (import "wasi_snapshot_preview1" "fd_read" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview17fd_read17h6692592c035dbcd7E (type 8)))
  (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h0186234eb6f97ea4E (type 8)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (type 7)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (type 7)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 0)))
  (func $__wasm_call_ctors (type 1))
  (func $_start (type 1)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        global.get $GOT.data.internal.__memory_base
        i32.const 1064896
        i32.add
        i32.load
        br_if 0 (;@2;)
        global.get $GOT.data.internal.__memory_base
        i32.const 1064896
        i32.add
        i32.const 1
        i32.store
        call $__wasm_call_ctors
        call $__main_void
        local.set 0
        call $__wasm_call_dtors
        local.get 0
        br_if 1 (;@1;)
        return
      end
      unreachable
    end
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $_ZN2bf4main17h10d65795417b6cedE (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i64.const 17179869184
    i64.store offset=4 align=4
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i64.const 17179869184
    i64.store offset=16 align=4
    i32.const 4
    local.set 1
    i32.const 4
    local.set 2
    i32.const 4
    local.set 3
    i32.const 0
    local.set 4
    i32.const 0
    local.set 5
    i32.const 0
    local.set 6
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.load8_s offset=1049816
          local.tee 7
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 7
          i32.const 255
          i32.and
          local.set 7
          br 1 (;@2;)
        end
        local.get 7
        i32.const 31
        i32.and
        local.set 8
        local.get 6
        i32.const 1049817
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        local.set 9
        block  ;; label = @3
          local.get 7
          i32.const -33
          i32.gt_u
          br_if 0 (;@3;)
          local.get 8
          i32.const 6
          i32.shl
          local.get 9
          i32.or
          local.set 7
          local.get 6
          i32.const 2
          i32.add
          local.set 6
          br 1 (;@2;)
        end
        local.get 9
        i32.const 6
        i32.shl
        local.get 6
        i32.const 1049818
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.set 9
        block  ;; label = @3
          local.get 7
          i32.const -16
          i32.ge_u
          br_if 0 (;@3;)
          local.get 9
          local.get 8
          i32.const 12
          i32.shl
          i32.or
          local.set 7
          local.get 6
          i32.const 3
          i32.add
          local.set 6
          br 1 (;@2;)
        end
        local.get 9
        i32.const 6
        i32.shl
        local.get 6
        i32.const 1049819
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.get 8
        i32.const 18
        i32.shl
        i32.const 1835008
        i32.and
        i32.or
        local.set 7
        local.get 6
        i32.const 4
        i32.add
        local.set 6
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              i32.const -43
                              i32.add
                              br_table 3 (;@10;) 6 (;@7;) 4 (;@9;) 5 (;@8;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 2 (;@11;) 10 (;@3;) 1 (;@12;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 10 (;@3;) 7 (;@6;) 10 (;@3;) 8 (;@5;) 0 (;@13;)
                            end
                            local.get 7
                            i32.const 1114112
                            i32.ne
                            br_if 9 (;@3;)
                            br 10 (;@2;)
                          end
                          block  ;; label = @12
                            local.get 4
                            local.get 0
                            i32.load offset=4
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 4
                            i32.add
                            i32.const 1055804
                            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
                          end
                          local.get 0
                          i32.load offset=8
                          local.tee 1
                          local.get 4
                          i32.const 3
                          i32.shl
                          i32.add
                          i32.const 0
                          i32.store
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 4
                          br 7 (;@4;)
                        end
                        block  ;; label = @11
                          local.get 4
                          local.get 0
                          i32.load offset=4
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 4
                          i32.add
                          i32.const 1055820
                          call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
                        end
                        local.get 0
                        i32.load offset=8
                        local.tee 1
                        local.get 4
                        i32.const 3
                        i32.shl
                        i32.add
                        i32.const 1
                        i32.store
                        local.get 4
                        i32.const 1
                        i32.add
                        local.set 4
                        br 6 (;@4;)
                      end
                      block  ;; label = @10
                        local.get 4
                        local.get 0
                        i32.load offset=4
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 4
                        i32.add
                        i32.const 1055836
                        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
                      end
                      local.get 0
                      i32.load offset=8
                      local.tee 1
                      local.get 4
                      i32.const 3
                      i32.shl
                      i32.add
                      i32.const 2
                      i32.store
                      local.get 4
                      i32.const 1
                      i32.add
                      local.set 4
                      br 5 (;@4;)
                    end
                    block  ;; label = @9
                      local.get 4
                      local.get 0
                      i32.load offset=4
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 4
                      i32.add
                      i32.const 1055852
                      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
                    end
                    local.get 0
                    i32.load offset=8
                    local.tee 1
                    local.get 4
                    i32.const 3
                    i32.shl
                    i32.add
                    i32.const 3
                    i32.store
                    local.get 4
                    i32.const 1
                    i32.add
                    local.set 4
                    br 4 (;@4;)
                  end
                  block  ;; label = @8
                    local.get 4
                    local.get 0
                    i32.load offset=4
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.const 1055868
                    call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
                  end
                  local.get 0
                  i32.load offset=8
                  local.tee 1
                  local.get 4
                  i32.const 3
                  i32.shl
                  i32.add
                  i32.const 4
                  i32.store
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  local.get 4
                  local.get 0
                  i32.load offset=4
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.const 1055884
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
                  local.get 0
                  i32.load offset=8
                  local.set 1
                end
                local.get 1
                local.get 4
                i32.const 3
                i32.shl
                i32.add
                i32.const 5
                i32.store
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 5
                local.get 0
                i32.load offset=16
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0e86a157b173b831E
                local.get 0
                i32.load offset=20
                local.set 2
              end
              local.get 2
              local.get 5
              i32.const 2
              i32.shl
              i32.add
              local.get 4
              i32.store
              local.get 0
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.store offset=24
              block  ;; label = @6
                local.get 4
                local.get 0
                i32.load offset=4
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                i32.const 4
                i32.add
                i32.const 1055916
                call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
              end
              local.get 0
              i32.load offset=8
              local.tee 1
              local.get 4
              i32.const 3
              i32.shl
              i32.add
              i64.const 6
              i64.store align=4
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                i32.const -1
                i32.add
                local.tee 5
                i32.store offset=24
                local.get 2
                local.get 5
                i32.const 2
                i32.shl
                i32.add
                i32.load
                local.tee 7
                local.get 4
                i32.ge_u
                br_if 1 (;@5;)
                local.get 3
                local.get 7
                i32.const 3
                i32.shl
                i32.add
                local.tee 1
                local.get 4
                i32.const 1
                i32.add
                local.tee 3
                i32.store offset=4
                local.get 1
                i32.const 6
                i32.store
                local.get 7
                i32.const 1
                i32.add
                local.set 7
                block  ;; label = @7
                  local.get 4
                  local.get 0
                  i32.load offset=4
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.const 1055984
                  call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE
                end
                local.get 0
                i32.load offset=8
                local.tee 1
                local.get 4
                i32.const 3
                i32.shl
                i32.add
                local.tee 4
                local.get 7
                i32.store offset=4
                local.get 4
                i32.const 7
                i32.store
                local.get 3
                local.set 4
                br 2 (;@4;)
              end
              i32.const 1055932
              i32.const 19
              i32.const 1055952
              call $_ZN4core6option13expect_failed17haca81fcbfb12091aE
              unreachable
            end
            local.get 7
            local.get 4
            i32.const 1055968
            call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
            unreachable
          end
          local.get 0
          local.get 4
          i32.store offset=12
          local.get 1
          local.set 3
        end
        local.get 6
        i32.const 5925
        i32.ne
        br_if 1 (;@1;)
      end
    end
    block  ;; label = @1
      local.get 5
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 3
      local.get 0
      i32.load offset=4
      local.set 9
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.get 6
        i32.const 2
        i32.shl
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 3000
            i32.const 1
            call $_RNvCsj3IbkTTFM3W_7___rustc19___rust_alloc_zeroed
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call $_ZN3std2io5stdio5stdin17hc264ecb81222a070E
            i32.store offset=32
            local.get 0
            local.get 0
            i32.const 32
            i32.add
            call $_ZN3std2io5stdio5Stdin4lock17hf8225f3018f97551E
            i32.store offset=36
            local.get 0
            call $_ZN3std2io5stdio6stdout17ha5a1a65d719020c4E
            i32.store offset=40
            local.get 0
            local.get 0
            i32.const 40
            i32.add
            call $_ZN3std2io5stdio6Stderr4lock17h98ad03a92772c918E
            local.tee 6
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.store8 offset=47
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            local.set 7
            i32.const 0
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 3
                                                        local.get 6
                                                        i32.const 3
                                                        i32.shl
                                                        i32.add
                                                        local.tee 1
                                                        i32.load
                                                        br_table 1 (;@25;) 2 (;@24;) 3 (;@23;) 4 (;@22;) 5 (;@21;) 0 (;@26;) 8 (;@18;) 9 (;@17;) 1 (;@25;)
                                                      end
                                                      local.get 0
                                                      i32.const 48
                                                      i32.add
                                                      local.get 0
                                                      i32.const 36
                                                      i32.add
                                                      local.get 0
                                                      i32.const 47
                                                      i32.add
                                                      i32.const 1
                                                      call $_ZN59_$LT$std..io..stdio..StdinLock$u20$as$u20$std..io..Read$GT$4read17h23438439ae10b140E
                                                      local.get 0
                                                      i32.load offset=52
                                                      local.set 1
                                                      block  ;; label = @26
                                                        local.get 0
                                                        i32.load8_u offset=48
                                                        local.tee 8
                                                        i32.const 4
                                                        i32.ne
                                                        br_if 0 (;@26;)
                                                        local.get 1
                                                        i32.const 1
                                                        i32.eq
                                                        br_if 6 (;@20;)
                                                      end
                                                      local.get 7
                                                      i32.const 3000
                                                      i32.ge_u
                                                      br_if 6 (;@19;)
                                                      local.get 5
                                                      local.get 7
                                                      i32.add
                                                      i32.const 0
                                                      i32.store8
                                                      local.get 8
                                                      i32.const 3
                                                      i32.ne
                                                      br_if 18 (;@7;)
                                                      local.get 1
                                                      i32.load
                                                      local.set 2
                                                      block  ;; label = @26
                                                        local.get 1
                                                        i32.const 4
                                                        i32.add
                                                        i32.load
                                                        local.tee 8
                                                        i32.load
                                                        local.tee 10
                                                        i32.eqz
                                                        br_if 0 (;@26;)
                                                        local.get 2
                                                        local.get 10
                                                        call_indirect (type 0)
                                                      end
                                                      block  ;; label = @26
                                                        local.get 8
                                                        i32.load offset=4
                                                        local.tee 10
                                                        i32.eqz
                                                        br_if 0 (;@26;)
                                                        local.get 2
                                                        local.get 10
                                                        local.get 8
                                                        i32.load offset=8
                                                        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
                                                      end
                                                      local.get 1
                                                      i32.const 12
                                                      i32.const 4
                                                      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
                                                      br 18 (;@7;)
                                                    end
                                                    local.get 7
                                                    i32.const 1
                                                    i32.add
                                                    local.tee 7
                                                    i32.const 3000
                                                    i32.ge_u
                                                    br_if 8 (;@16;)
                                                    br 17 (;@7;)
                                                  end
                                                  local.get 7
                                                  i32.eqz
                                                  br_if 15 (;@8;)
                                                  local.get 6
                                                  i32.const 1
                                                  i32.add
                                                  local.set 6
                                                  local.get 7
                                                  i32.const -1
                                                  i32.add
                                                  local.set 7
                                                  br 17 (;@6;)
                                                end
                                                local.get 7
                                                i32.const 3000
                                                i32.ge_u
                                                br_if 7 (;@15;)
                                                local.get 5
                                                local.get 7
                                                i32.add
                                                local.tee 1
                                                local.get 1
                                                i32.load8_u
                                                i32.const 1
                                                i32.add
                                                i32.store8
                                                br 15 (;@7;)
                                              end
                                              local.get 7
                                              i32.const 3000
                                              i32.ge_u
                                              br_if 7 (;@14;)
                                              local.get 5
                                              local.get 7
                                              i32.add
                                              local.tee 1
                                              local.get 1
                                              i32.load8_u
                                              i32.const -1
                                              i32.add
                                              i32.store8
                                              br 14 (;@7;)
                                            end
                                            local.get 7
                                            i32.const 3000
                                            i32.ge_u
                                            br_if 7 (;@13;)
                                            local.get 0
                                            local.get 5
                                            local.get 7
                                            i32.add
                                            i32.load8_u
                                            i32.store8 offset=79
                                            local.get 0
                                            i32.const 16
                                            i32.add
                                            local.get 0
                                            i32.const 4
                                            i32.add
                                            local.get 0
                                            i32.const 79
                                            i32.add
                                            i32.const 1
                                            call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h637b66ce416ba494E
                                            local.get 0
                                            i32.load8_u offset=16
                                            i32.const 4
                                            i32.ne
                                            br_if 8 (;@12;)
                                            local.get 0
                                            i32.const 16
                                            i32.add
                                            local.get 0
                                            i32.const 4
                                            i32.add
                                            call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5flush17hc523f5ce6b40368eE
                                            local.get 0
                                            i32.load8_u offset=16
                                            i32.const 4
                                            i32.eq
                                            br_if 13 (;@7;)
                                            local.get 0
                                            local.get 0
                                            i64.load offset=16
                                            i64.store offset=48
                                            i32.const 1049676
                                            i32.const 43
                                            local.get 0
                                            i32.const 48
                                            i32.add
                                            i32.const 1049660
                                            i32.const 1049720
                                            call $_ZN4core6result13unwrap_failed17h1d6e5e7cf4a1711bE
                                            unreachable
                                          end
                                          block  ;; label = @20
                                            local.get 7
                                            i32.const 2999
                                            i32.gt_u
                                            br_if 0 (;@20;)
                                            local.get 5
                                            local.get 7
                                            i32.add
                                            local.get 0
                                            i32.load8_u offset=47
                                            i32.store8
                                            br 13 (;@7;)
                                          end
                                          local.get 7
                                          i32.const 3000
                                          i32.const 1049752
                                          call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
                                          unreachable
                                        end
                                        local.get 7
                                        i32.const 3000
                                        i32.const 1049768
                                        call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
                                        unreachable
                                      end
                                      local.get 7
                                      i32.const 3000
                                      i32.ge_u
                                      br_if 6 (;@11;)
                                      local.get 5
                                      local.get 7
                                      i32.add
                                      i32.load8_u
                                      br_if 10 (;@7;)
                                      br 8 (;@9;)
                                    end
                                    local.get 7
                                    i32.const 3000
                                    i32.ge_u
                                    br_if 6 (;@10;)
                                    local.get 5
                                    local.get 7
                                    i32.add
                                    i32.load8_u
                                    i32.eqz
                                    br_if 9 (;@7;)
                                    br 7 (;@9;)
                                  end
                                  local.get 0
                                  i32.const 0
                                  i32.store offset=64
                                  local.get 0
                                  i32.const 1
                                  i32.store offset=52
                                  local.get 0
                                  i32.const 1049528
                                  i32.store offset=48
                                  local.get 0
                                  i64.const 4
                                  i64.store offset=56 align=4
                                  local.get 0
                                  i32.const 48
                                  i32.add
                                  i32.const 1049536
                                  call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
                                  unreachable
                                end
                                local.get 7
                                i32.const 3000
                                i32.const 1049612
                                call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
                                unreachable
                              end
                              local.get 7
                              i32.const 3000
                              i32.const 1049628
                              call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
                              unreachable
                            end
                            local.get 7
                            i32.const 3000
                            i32.const 1049644
                            call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
                            unreachable
                          end
                          local.get 0
                          local.get 0
                          i64.load offset=16
                          i64.store offset=48
                          i32.const 1049676
                          i32.const 43
                          local.get 0
                          i32.const 48
                          i32.add
                          i32.const 1049660
                          i32.const 1049736
                          call $_ZN4core6result13unwrap_failed17h1d6e5e7cf4a1711bE
                          unreachable
                        end
                        local.get 7
                        i32.const 3000
                        i32.const 1049784
                        call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
                        unreachable
                      end
                      local.get 7
                      i32.const 3000
                      i32.const 1049800
                      call $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE
                      unreachable
                    end
                    local.get 1
                    i32.load offset=4
                    local.tee 6
                    call $backedge
                    br 2 (;@6;)
                  end
                  local.get 0
                  i32.const 0
                  i32.store offset=64
                  local.get 0
                  i32.const 1
                  i32.store offset=52
                  local.get 0
                  i32.const 1049588
                  i32.store offset=48
                  local.get 0
                  i64.const 4
                  i64.store offset=56 align=4
                  local.get 0
                  i32.const 48
                  i32.add
                  i32.const 1049596
                  call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
                  unreachable
                end
                local.get 6
                i32.const 1
                i32.add
                local.set 6
              end
              local.get 6
              local.get 4
              i32.ge_u
              br_if 2 (;@3;)
              br 0 (;@5;)
            end
          end
          i32.const 1
          i32.const 3000
          i32.const 1055744
          call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
          unreachable
        end
        local.get 0
        i32.load offset=4
        local.set 6
      end
      local.get 6
      local.get 6
      i32.load offset=8
      i32.const -1
      i32.add
      local.tee 4
      i32.store offset=8
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 6
        i32.const 0
        i32.store8 offset=12
        local.get 6
        i64.const 0
        i64.store
      end
      local.get 0
      i32.load offset=36
      i32.const 0
      i32.store8
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 9
        i32.const 3
        i32.shl
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 5
      i32.const 3000
      i32.const 1
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      local.get 0
      i32.const 80
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 0
    i32.const 0
    i32.store offset=64
    local.get 0
    i32.const 1
    i32.store offset=52
    local.get 0
    i32.const 1055780
    i32.store offset=48
    local.get 0
    i64.const 4
    i64.store offset=56 align=4
    local.get 0
    i32.const 48
    i32.add
    i32.const 1055788
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdb2eca4ecf3fdf5aE (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 4
      i32.const 268435455
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      local.get 1
      call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 1
        i32.shl
        local.tee 5
        i32.const 4
        local.get 5
        i32.const 4
        i32.gt_u
        select
        local.tee 6
        i32.const 3
        i32.shl
        local.tee 5
        i32.const 2147483644
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.const 3
          i32.shl
          i32.store offset=28
          local.get 2
          local.get 0
          i32.load offset=4
          i32.store offset=20
          i32.const 4
          local.set 3
        end
        local.get 2
        local.get 3
        i32.store offset=24
        local.get 2
        i32.const 8
        i32.add
        local.get 5
        local.get 2
        i32.const 20
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h9e4e487aa400fbf3E
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 7
        local.get 2
        i32.load offset=12
        local.set 3
      end
      local.get 3
      local.get 7
      local.get 1
      call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
      unreachable
    end
    local.get 2
    i32.load offset=12
    local.set 4
    local.get 0
    local.get 6
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0e86a157b173b831E (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 3
          i32.const 536870911
          i32.le_u
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        local.get 3
        i32.const 1
        i32.shl
        local.tee 4
        i32.const 4
        local.get 4
        i32.const 4
        i32.gt_u
        select
        local.tee 5
        i32.const 2
        i32.shl
        local.tee 4
        i32.const 2147483644
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i32.const 2
          i32.shl
          i32.store offset=28
          local.get 1
          local.get 0
          i32.load offset=4
          i32.store offset=20
          i32.const 4
          local.set 2
        end
        local.get 1
        local.get 2
        i32.store offset=24
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        local.get 1
        i32.const 20
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h9e4e487aa400fbf3E
        local.get 1
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=16
        local.set 6
        local.get 1
        i32.load offset=12
        local.set 2
      end
      local.get 2
      local.get 6
      i32.const 1055900
      call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
      unreachable
    end
    local.get 1
    i32.load offset=12
    local.set 3
    local.get 0
    local.get 5
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h45db55f8ca9a304eE (type 3) (param i32) (result i32)
    local.get 0
    i32.load
    call $_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h25b9d59ba739c5c6E
    i32.const 0)
  (func $_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h25b9d59ba739c5c6E (type 0) (param i32)
    local.get 0
    call_indirect (type 1))
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3238718defed9734E (type 3) (param i32) (result i32)
    local.get 0
    i32.load
    call $_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h25b9d59ba739c5c6E
    i32.const 0)
  (func $_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc68d2d4b60b1e7a1E (type 0) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.load
      local.set 1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 2
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        call_indirect (type 0)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        local.get 2
        i32.load offset=8
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 0
      i32.const 12
      i32.const 4
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end)
  (func $_ZN5alloc7raw_vec11finish_grow17h9e4e487aa400fbf3E (type 4) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 3
              br_if 0 (;@5;)
              local.get 1
              i32.eqz
              br_if 3 (;@2;)
              call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
              local.get 1
              i32.const 4
              call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
              local.set 2
              br 2 (;@3;)
            end
            local.get 2
            i32.load
            local.get 3
            i32.const 4
            local.get 1
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_realloc
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
          local.get 1
          i32.const 4
          call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
          local.set 2
        end
        local.get 2
        i32.const 4
        local.get 2
        select
        local.set 3
        local.get 2
        i32.eqz
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      i32.const 4
      local.set 3
    end
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $__main_void (type 9) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 1056000
    i32.const 0
    i32.const 0
    i32.const 0
    call $_ZN3std2rt19lang_start_internal17h15e0ed7fca656539E
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_RNvCsj3IbkTTFM3W_7___rustc11___rdl_alloc
    return)
  (func $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc (type 4) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_RNvCsj3IbkTTFM3W_7___rustc13___rdl_dealloc
    return)
  (func $_RNvCsj3IbkTTFM3W_7___rustc14___rust_realloc (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_RNvCsj3IbkTTFM3W_7___rustc13___rdl_realloc
    return)
  (func $_RNvCsj3IbkTTFM3W_7___rustc19___rust_alloc_zeroed (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_RNvCsj3IbkTTFM3W_7___rustc18___rdl_alloc_zeroed
    return)
  (func $_RNvCsj3IbkTTFM3W_7___rustc26___rust_alloc_error_handler (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $_RNvCsj3IbkTTFM3W_7___rustc8___rg_oom
    return)
  (func $_RNvCsj3IbkTTFM3W_7___rustc42___rust_alloc_error_handler_should_panic_v2 (type 9) (result i32)
    i32.const 0
    return)
  (func $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2 (type 1)
    return)
  (func $_RNvCsj3IbkTTFM3W_7___rustc18___rust_start_panic (type 7) (param i32 i32) (result i32)
    call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_abort
    unreachable)
  (func $_RNvCsj3IbkTTFM3W_7___rustc10rust_panic (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    local.get 1
    call $_RNvCsj3IbkTTFM3W_7___rustc18___rust_start_panic
    i32.store offset=12
    local.get 2
    i32.const 2
    i32.store offset=28
    local.get 2
    i32.const 1056088
    i32.store offset=24
    local.get 2
    i64.const 1
    i64.store offset=36 align=4
    local.get 2
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 63
    i32.add
    local.get 2
    i32.const 24
    i32.add
    call $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E
    local.get 2
    i32.load8_u offset=16
    local.get 2
    i32.load offset=20
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
    call $_ZN3std7process5abort17ha1b58ce6fe11d933E
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store
    local.get 3
    i32.const 4
    i32.store8 offset=24
    local.get 3
    local.get 1
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 24
          i32.add
          i32.const 1056280
          local.get 3
          call $_ZN4core3fmt5write17h73319cf8ac237dc9E
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load8_u offset=24
          i32.const 4
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 0
          i32.store offset=56
          local.get 3
          i32.const 1
          i32.store offset=44
          local.get 3
          i32.const 1056232
          i32.store offset=40
          local.get 3
          i64.const 4
          i64.store offset=48 align=4
          local.get 3
          i32.const 40
          i32.add
          i32.const 1056240
          call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
          unreachable
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load offset=28
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=24
          local.tee 2
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
        end
        local.get 1
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          call_indirect (type 0)
        end
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 2
          i32.load offset=8
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 1
        i32.const 12
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i64.load offset=24
      i64.store align=4
    end
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E (type 2) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        local.tee 0
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        call_indirect (type 0)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        local.get 0
        i32.load offset=8
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 1
      i32.const 12
      i32.const 4
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end)
  (func $_ZN3std7process5abort17ha1b58ce6fe11d933E (type 1)
    call $_ZN3std3sys3pal6wasip17helpers14abort_internal17h80fffa433f424774E
    unreachable)
  (func $_RNvCsj3IbkTTFM3W_7___rustc11___rdl_alloc (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.le_u
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        i32.const 4
        local.get 1
        i32.const 4
        i32.gt_u
        select
        local.get 0
        call $posix_memalign
        local.set 1
        i32.const 0
        local.get 2
        i32.load offset=12
        local.get 1
        select
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      call $malloc
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_RNvCsj3IbkTTFM3W_7___rustc12___rust_abort (type 1)
    call $_ZN3std7process5abort17ha1b58ce6fe11d933E
    unreachable)
  (func $_RNvCsj3IbkTTFM3W_7___rustc13___rdl_dealloc (type 4) (param i32 i32 i32)
    local.get 0
    call $free)
  (func $_RNvCsj3IbkTTFM3W_7___rustc13___rdl_realloc (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 8
          i32.gt_u
          local.tee 5
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.le_u
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 5
            local.get 4
            i32.const 0
            i32.store offset=12
            local.get 4
            i32.const 12
            i32.add
            local.get 2
            i32.const 4
            local.get 2
            i32.const 4
            i32.gt_u
            select
            local.get 3
            call $posix_memalign
            br_if 3 (;@1;)
            local.get 4
            i32.load offset=12
            local.set 5
            br 1 (;@3;)
          end
          local.get 3
          call $malloc
          local.set 5
        end
        block  ;; label = @3
          local.get 5
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          local.get 1
          local.get 3
          local.get 1
          i32.lt_u
          select
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 0
          local.get 2
          memory.copy
        end
        local.get 0
        call $free
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      call $realloc
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $_RNvCsj3IbkTTFM3W_7___rustc17rust_begin_unwind (type 0) (param i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i64.load align=4
    local.set 2
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 2
    i64.store offset=4 align=4
    local.get 1
    i32.const 4
    i32.add
    call $_ZN3std3sys9backtrace26__rust_end_short_backtrace17h34a9df308cf0bf3dE
    unreachable)
  (func $_ZN3std3sys9backtrace26__rust_end_short_backtrace17h34a9df308cf0bf3dE (type 0) (param i32)
    local.get 0
    call $_ZN3std9panicking13panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hd86b4b8cd5188c6bE
    unreachable)
  (func $_RNvCsj3IbkTTFM3W_7___rustc18___rdl_alloc_zeroed (type 7) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.le_u
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 3
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        i32.const 4
        local.get 1
        i32.const 4
        i32.gt_u
        select
        local.get 0
        call $posix_memalign
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          local.get 0
          memory.fill
        end
        local.get 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      call $calloc
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_RNvCsj3IbkTTFM3W_7___rustc8___rg_oom (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN3std5alloc8rust_oom17h40441dc08766c5caE
    unreachable)
  (func $_ZN3std5alloc8rust_oom17h40441dc08766c5caE (type 2) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1064988
    local.tee 2
    i32.const 7
    local.get 2
    select
    call_indirect (type 2)
    call $_ZN3std7process5abort17ha1b58ce6fe11d933E
    unreachable)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h197406c149b72ff4E (type 2) (param i32 i32)
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1056112 align=4
    i64.store align=4
    local.get 0
    i32.const 0
    i64.load offset=1056104 align=4
    i64.store align=4)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h2055c642c6de02ecE (type 2) (param i32 i32)
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i64.load offset=1056128 align=4
    i64.store align=4
    local.get 0
    i32.const 0
    i64.load offset=1056120 align=4
    i64.store align=4)
  (func $_ZN3std3sys3pal6wasip17helpers17decode_error_kind17h5dae3b3363eedd96E (type 3) (param i32) (result i32)
    (local i32)
    i32.const 41
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.add
      local.tee 0
      i32.const 65535
      i32.and
      i32.const 75
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 65535
      i32.and
      i32.load8_u offset=1058992
      local.set 1
    end
    local.get 1)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h891f080cca532428E (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h85930e855939b804E)
  (func $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 1
          i32.add
          local.tee 1
          local.get 2
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        i32.const 0
        local.set 6
        block  ;; label = @3
          local.get 3
          local.get 4
          i32.add
          i32.const -1
          i32.add
          i32.const 0
          local.get 3
          i32.sub
          i32.and
          i64.extend_i32_u
          local.get 1
          local.get 0
          i32.load
          local.tee 7
          i32.const 1
          i32.shl
          local.tee 2
          local.get 1
          local.get 2
          i32.gt_u
          select
          local.tee 2
          i32.const 8
          i32.const 4
          local.get 4
          i32.const 1
          i32.eq
          select
          local.tee 1
          local.get 2
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i64.extend_i32_u
          i64.mul
          local.tee 8
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        local.get 8
        i32.wrap_i64
        local.tee 9
        i32.const -2147483648
        local.get 3
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 7
          local.get 4
          i32.mul
          i32.store offset=28
          local.get 5
          local.get 0
          i32.load offset=4
          i32.store offset=20
          local.get 3
          local.set 2
        end
        local.get 5
        local.get 2
        i32.store offset=24
        local.get 5
        i32.const 8
        i32.add
        local.get 3
        local.get 9
        local.get 5
        i32.const 20
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h900f637594f07e4eE
        local.get 5
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=16
        local.set 2
        local.get 5
        i32.load offset=12
        local.set 6
      end
      local.get 6
      local.get 2
      i32.const 1058252
      call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
      unreachable
    end
    local.get 5
    i32.load offset=12
    local.set 3
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc7raw_vec11finish_grow17h900f637594f07e4eE (type 6) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=4
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.load offset=8
              local.tee 4
              br_if 0 (;@5;)
              local.get 2
              br_if 2 (;@3;)
              i32.const 0
              local.set 3
              br 4 (;@1;)
            end
            local.get 3
            i32.load
            local.get 4
            local.get 1
            local.get 2
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_realloc
            local.set 3
            br 2 (;@2;)
          end
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
        local.get 2
        local.get 1
        call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
        local.set 3
      end
      local.get 3
      local.get 1
      local.get 3
      select
      local.set 1
      local.get 3
      i32.eqz
      local.set 3
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func $_ZN3std2io5Write18write_all_vectored17h99976bea0c3e6ee3E (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 4
        i32.add
        local.set 5
        local.get 3
        i32.const 3
        i32.shl
        local.tee 6
        i32.const -8
        i32.add
        i32.const 3
        i32.shr_u
        i32.const 1
        i32.add
        local.set 7
        i32.const 0
        local.set 8
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.load
            br_if 1 (;@3;)
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            local.get 6
            i32.const -8
            i32.add
            local.tee 6
            br_if 0 (;@4;)
          end
          local.get 7
          local.set 8
        end
        block  ;; label = @3
          local.get 3
          local.get 8
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 8
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          local.get 8
          i32.sub
          local.set 9
          local.get 2
          local.get 8
          i32.const 3
          i32.shl
          i32.add
          local.set 7
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              i32.const 8
              i32.add
              i32.const 2
              local.get 7
              local.get 9
              call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
              block  ;; label = @6
                local.get 4
                i32.load16_u offset=8
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i64.load16_u offset=10
                local.tee 10
                i64.const 27
                i64.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 10
                i64.const 32
                i64.shl
                i64.store align=4
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 4
                i32.load offset=12
                local.tee 5
                br_if 0 (;@6;)
                local.get 0
                i32.const 0
                i64.load offset=1056368
                i64.store align=4
                br 5 (;@1;)
              end
              local.get 7
              i32.const 4
              i32.add
              local.set 8
              local.get 9
              i32.const 3
              i32.shl
              local.tee 3
              i32.const -8
              i32.add
              i32.const 3
              i32.shr_u
              i32.const 1
              i32.add
              local.set 11
              i32.const 0
              local.set 6
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 5
                  local.get 8
                  i32.load
                  local.tee 2
                  i32.lt_u
                  br_if 1 (;@6;)
                  local.get 8
                  i32.const 8
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 6
                  local.get 5
                  local.get 2
                  i32.sub
                  local.set 5
                  local.get 3
                  i32.const -8
                  i32.add
                  local.tee 3
                  br_if 0 (;@7;)
                end
                local.get 11
                local.set 6
              end
              block  ;; label = @6
                local.get 9
                local.get 6
                i32.lt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 9
                  local.get 6
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.eqz
                  br_if 5 (;@2;)
                  local.get 4
                  i32.const 0
                  i32.store offset=24
                  local.get 4
                  i32.const 1
                  i32.store offset=12
                  local.get 4
                  i32.const 1056616
                  i32.store offset=8
                  local.get 4
                  i64.const 4
                  i64.store offset=16 align=4
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.const 1056624
                  call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
                  unreachable
                end
                local.get 7
                local.get 6
                i32.const 3
                i32.shl
                i32.add
                local.tee 7
                i32.load offset=4
                local.tee 8
                local.get 5
                i32.lt_u
                br_if 2 (;@4;)
                local.get 9
                local.get 6
                i32.sub
                local.set 9
                local.get 7
                local.get 8
                local.get 5
                i32.sub
                i32.store offset=4
                local.get 7
                local.get 7
                i32.load
                local.get 5
                i32.add
                i32.store
                br 1 (;@5;)
              end
            end
            local.get 6
            local.get 9
            local.get 9
            i32.const 1056560
            call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
            unreachable
          end
          local.get 4
          i32.const 0
          i32.store offset=24
          local.get 4
          i32.const 1
          i32.store offset=12
          local.get 4
          i32.const 1056676
          i32.store offset=8
          local.get 4
          i64.const 4
          i64.store offset=16 align=4
          local.get 4
          i32.const 8
          i32.add
          i32.const 1056684
          call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
          unreachable
        end
        local.get 8
        local.get 3
        local.get 3
        i32.const 1056560
        call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
        unreachable
      end
      local.get 0
      i32.const 4
      i32.store8
    end
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5Write9write_all17h2449cb573fa81848E (type 6) (param i32 i32 i32 i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 4
            local.get 3
            i32.store offset=4
            local.get 4
            local.get 2
            i32.store
            local.get 4
            i32.const 8
            i32.add
            i32.const 2
            local.get 4
            i32.const 1
            call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.load16_u offset=8
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i64.load16_u offset=10
                local.tee 5
                i64.const 27
                i64.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 5
                i64.const 32
                i64.shl
                i64.store align=4
                br 4 (;@2;)
              end
              block  ;; label = @6
                local.get 4
                i32.load offset=12
                local.tee 6
                br_if 0 (;@6;)
                local.get 0
                i32.const 0
                i64.load offset=1056368
                i64.store align=4
                br 4 (;@2;)
              end
              local.get 3
              local.get 6
              i32.lt_u
              br_if 4 (;@1;)
              local.get 2
              local.get 6
              i32.add
              local.set 2
              local.get 3
              local.get 6
              i32.sub
              local.set 3
            end
            local.get 3
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 4
        i32.store8
      end
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 6
    local.get 3
    local.get 3
    i32.const 1056376
    call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17h1ad3df6193a8c41fE (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store
    local.get 3
    i32.const 4
    i32.store8 offset=24
    local.get 3
    local.get 1
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 24
          i32.add
          i32.const 1056256
          local.get 3
          call $_ZN4core3fmt5write17h73319cf8ac237dc9E
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load8_u offset=24
          i32.const 4
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 0
          i32.store offset=56
          local.get 3
          i32.const 1
          i32.store offset=44
          local.get 3
          i32.const 1056232
          i32.store offset=40
          local.get 3
          i64.const 4
          i64.store offset=48 align=4
          local.get 3
          i32.const 40
          i32.add
          i32.const 1056240
          call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
          unreachable
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load offset=28
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=24
          local.tee 2
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
        end
        local.get 1
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          call_indirect (type 0)
        end
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 2
          i32.load offset=8
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 1
        i32.const 12
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i64.load offset=24
      i64.store align=4
    end
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5Write9write_fmt17hb57d4e151802c842E (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store
    local.get 3
    i32.const 4
    i32.store8 offset=24
    local.get 3
    local.get 1
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 24
          i32.add
          i32.const 1056304
          local.get 3
          call $_ZN4core3fmt5write17h73319cf8ac237dc9E
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load8_u offset=24
          i32.const 4
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 0
          i32.store offset=56
          local.get 3
          i32.const 1
          i32.store offset=44
          local.get 3
          i32.const 1056232
          i32.store offset=40
          local.get 3
          i64.const 4
          i64.store offset=48 align=4
          local.get 3
          i32.const 40
          i32.add
          i32.const 1056240
          call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
          unreachable
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load offset=28
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=24
          local.tee 2
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
        end
        local.get 1
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          call_indirect (type 0)
        end
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 2
          i32.load offset=8
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 1
        i32.const 12
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i64.load offset=24
      i64.store align=4
    end
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5error82_$LT$impl$u20$core..fmt..Debug$u20$for$u20$std..io..error..repr_unpacked..Repr$GT$3fmt17hcbd7ce33b5d679c8E (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
            end
            local.get 2
            local.get 0
            i32.load offset=4
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.get 1
            i32.const 1056392
            i32.const 2
            call $_ZN4core3fmt9Formatter12debug_struct17h4ddcfc121ab1e68dE
            local.get 2
            i32.const 8
            i32.add
            i32.const 1056412
            i32.const 4
            local.get 2
            i32.const 4
            i32.add
            i32.const 1056396
            call $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E
            local.set 0
            local.get 2
            local.get 2
            i32.load offset=4
            call $_ZN3std3sys3pal6wasip17helpers17decode_error_kind17h5dae3b3363eedd96E
            i32.const 255
            i32.and
            i32.store8 offset=19
            local.get 0
            i32.const 1056432
            i32.const 4
            local.get 2
            i32.const 19
            i32.add
            i32.const 1056416
            call $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E
            local.set 0
            local.get 2
            i32.const 20
            i32.add
            local.get 2
            i32.load offset=4
            call $_ZN3std3sys3pal6wasip12os12error_string17hfb65fdd57b33bf57E
            local.get 0
            i32.const 1056452
            i32.const 7
            local.get 2
            i32.const 20
            i32.add
            i32.const 1056436
            call $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E
            call $_ZN4core3fmt8builders11DebugStruct6finish17ha01ab58e9b17d37cE
            local.set 0
            local.get 2
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.load offset=24
            local.get 1
            i32.const 1
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
            br 3 (;@1;)
          end
          local.get 2
          local.get 0
          i32.load8_u offset=1
          i32.store8 offset=8
          local.get 2
          i32.const 20
          i32.add
          local.get 1
          i32.const 1056459
          i32.const 4
          call $_ZN4core3fmt9Formatter11debug_tuple17h406300e8cccc9575E
          local.get 2
          i32.const 20
          i32.add
          local.get 2
          i32.const 8
          i32.add
          i32.const 1056416
          call $_ZN4core3fmt8builders10DebugTuple5field17h2e8203dc36e59b28E
          call $_ZN4core3fmt8builders10DebugTuple6finish17ha92b97ab0af0fddcE
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.set 0
        local.get 2
        i32.const 20
        i32.add
        local.get 1
        i32.const 1056463
        i32.const 5
        call $_ZN4core3fmt9Formatter12debug_struct17h4ddcfc121ab1e68dE
        local.get 2
        i32.const 20
        i32.add
        i32.const 1056432
        i32.const 4
        local.get 0
        i32.const 8
        i32.add
        i32.const 1056416
        call $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E
        i32.const 1056452
        i32.const 7
        local.get 0
        i32.const 1056468
        call $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E
        call $_ZN4core3fmt8builders11DebugStruct6finish17ha01ab58e9b17d37cE
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.store offset=20
      local.get 1
      i32.const 1056500
      i32.const 6
      i32.const 1056432
      i32.const 4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1056416
      i32.const 1056506
      i32.const 5
      local.get 2
      i32.const 20
      i32.add
      i32.const 1056484
      call $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h1c1b4b20db9bf964E
      local.set 0
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std3sys3pal6wasip12os12error_string17hfb65fdd57b33bf57E (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 1056
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 1024
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.const 1024
      memory.fill
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.const 1024
          call $strerror_r
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 2
          i32.const 1024
          i32.add
          local.get 2
          local.get 2
          call $strlen
          call $_ZN4core3str8converts9from_utf817h41fef7c23fe7ae34E
          local.get 2
          i32.load offset=1024
          br_if 1 (;@2;)
          i32.const 0
          local.set 3
          local.get 2
          i32.load offset=1032
          local.tee 1
          i32.const 0
          i32.lt_s
          br_if 2 (;@1;)
          local.get 2
          i32.load offset=1028
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              br 1 (;@4;)
            end
            call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
            i32.const 1
            local.set 3
            local.get 1
            i32.const 1
            call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
            local.tee 5
            i32.eqz
            br_if 3 (;@1;)
          end
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            local.get 1
            memory.copy
          end
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 0
          local.get 5
          i32.store offset=4
          local.get 0
          local.get 1
          i32.store
          local.get 2
          i32.const 1056
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 2
        i32.const 0
        i32.store offset=1040
        local.get 2
        i32.const 1
        i32.store offset=1028
        local.get 2
        i32.const 1056928
        i32.store offset=1024
        local.get 2
        i64.const 4
        i64.store offset=1032 align=4
        local.get 2
        i32.const 1024
        i32.add
        i32.const 1056936
        call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
        unreachable
      end
      local.get 2
      local.get 2
      i64.load offset=1028 align=4
      i64.store offset=1048
      i32.const 1056848
      i32.const 43
      local.get 2
      i32.const 1048
      i32.add
      i32.const 1056832
      i32.const 1056892
      call $_ZN4core6result13unwrap_failed17h1d6e5e7cf4a1711bE
      unreachable
    end
    local.get 3
    local.get 1
    i32.const 1058944
    call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
    unreachable)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17he6b4c4e62247cd1dE (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 3
      i32.and
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        i32.const 28
        i32.add
        local.set 7
        local.get 3
        i32.const -4
        i32.and
        local.set 8
        i32.const 0
        local.set 4
        i32.const 0
        local.set 6
        loop  ;; label = @3
          local.get 7
          i32.load
          local.get 7
          i32.const -8
          i32.add
          i32.load
          local.get 7
          i32.const -16
          i32.add
          i32.load
          local.get 7
          i32.const -24
          i32.add
          i32.load
          local.get 4
          i32.add
          i32.add
          i32.add
          i32.add
          local.set 4
          local.get 7
          i32.const 32
          i32.add
          local.set 7
          local.get 8
          local.get 6
          i32.const 4
          i32.add
          local.tee 6
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 3
        i32.shl
        local.get 2
        i32.add
        i32.const 4
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 7
          i32.load
          local.get 4
          i32.add
          local.set 4
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const 3
      i32.shl
      local.set 7
      block  ;; label = @2
        local.get 4
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 5
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        local.get 4
        i32.const 1
        i32.const 1
        call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
      end
      local.get 2
      local.get 7
      i32.add
      local.set 8
      local.get 1
      i32.load offset=8
      local.set 7
      loop  ;; label = @2
        local.get 2
        i32.load
        local.set 6
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 5
          local.get 1
          i32.load
          local.get 7
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 1
          local.get 7
          local.get 5
          i32.const 1
          i32.const 1
          call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
          local.get 1
          i32.load offset=8
          local.set 7
        end
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=4
          local.get 7
          i32.add
          local.get 6
          local.get 5
          memory.copy
        end
        local.get 1
        local.get 7
        local.get 5
        i32.add
        local.tee 7
        i32.store offset=8
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        local.get 8
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 4
    i32.store8
    local.get 0
    local.get 4
    i32.store offset=4)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17h98fa5401e79d7848E (type 3) (param i32) (result i32)
    i32.const 1)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$18write_all_vectored17h6feb6e39bff582e8E (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 3
      i32.and
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        i32.const 28
        i32.add
        local.set 7
        local.get 3
        i32.const -4
        i32.and
        local.set 8
        i32.const 0
        local.set 5
        i32.const 0
        local.set 6
        loop  ;; label = @3
          local.get 7
          i32.load
          local.get 7
          i32.const -8
          i32.add
          i32.load
          local.get 7
          i32.const -16
          i32.add
          i32.load
          local.get 7
          i32.const -24
          i32.add
          i32.load
          local.get 5
          i32.add
          i32.add
          i32.add
          i32.add
          local.set 5
          local.get 7
          i32.const 32
          i32.add
          local.set 7
          local.get 8
          local.get 6
          i32.const 4
          i32.add
          local.tee 6
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 3
        i32.shl
        local.get 2
        i32.add
        i32.const 4
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 7
          i32.load
          local.get 5
          i32.add
          local.set 5
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const 3
      i32.shl
      local.set 4
      block  ;; label = @2
        local.get 5
        local.get 1
        i32.load
        local.get 1
        i32.load offset=8
        local.tee 7
        i32.sub
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        local.get 7
        local.get 5
        i32.const 1
        i32.const 1
        call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
        local.get 1
        i32.load offset=8
        local.set 7
      end
      local.get 2
      local.get 4
      i32.add
      local.set 6
      loop  ;; label = @2
        local.get 2
        i32.load
        local.set 4
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 5
          local.get 1
          i32.load
          local.get 7
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          local.get 1
          local.get 7
          local.get 5
          i32.const 1
          i32.const 1
          call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
          local.get 1
          i32.load offset=8
          local.set 7
        end
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=4
          local.get 7
          i32.add
          local.get 4
          local.get 5
          memory.copy
        end
        local.get 1
        local.get 7
        local.get 5
        i32.add
        local.tee 7
        i32.store offset=8
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        local.get 6
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17ha8933b52c88b970bE (type 2) (param i32 i32)
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17haf2e07e16cc1331fE (type 6) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 3
      local.get 1
      i32.load
      local.get 1
      i32.load offset=8
      local.tee 4
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      local.get 3
      i32.const 1
      i32.const 1
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
      local.get 1
      i32.load offset=8
      local.set 4
    end
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      memory.copy
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    local.get 3
    i32.add
    i32.store offset=8
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h6ec62d71fed20cb5E (type 6) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 3
      local.get 1
      i32.load
      local.get 1
      i32.load offset=8
      local.tee 4
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      local.get 3
      i32.const 1
      i32.const 1
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
      local.get 1
      i32.load offset=8
      local.set 4
    end
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=4
      local.get 4
      i32.add
      local.get 2
      local.get 3
      memory.copy
    end
    local.get 0
    i32.const 4
    i32.store8
    local.get 1
    local.get 4
    local.get 3
    i32.add
    i32.store offset=8)
  (func $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h206e4a20460f1940E (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 12
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.get 1
      i32.const 1
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.const 4
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end)
  (func $_ZN4core9panicking13assert_failed17ha5d93649e88ec3a6E (type 10) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 2
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 5
    i32.const 8
    i32.add
    i32.const 1058192
    local.get 5
    i32.const 12
    i32.add
    i32.const 1058192
    local.get 3
    local.get 4
    call $_ZN4core9panicking19assert_failed_inner17h6dea98922420f38eE
    unreachable)
  (func $_ZN3std2io5stdio5Stdin4lock17hf8225f3018f97551E (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.load
    local.tee 0
    i32.load8_u
    local.tee 2
    i32.store8 offset=7
    local.get 0
    i32.const 1
    i32.store8
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=20 align=4
      local.get 1
      i64.const 17179869185
      i64.store offset=12 align=4
      local.get 1
      i32.const 1057308
      i32.store offset=8
      i32.const 0
      local.get 1
      i32.const 7
      i32.add
      i32.const 1057388
      local.get 1
      i32.const 8
      i32.add
      i32.const 1057316
      call $_ZN4core9panicking13assert_failed17ha5d93649e88ec3a6E
      unreachable
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std2io5stdio5stdin17hc264ecb81222a070E (type 9) (result i32)
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1064932
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h66315547802fc4adE
    end
    i32.const 1064908)
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h66315547802fc4adE (type 1)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1064932
            br_table 0 (;@4;) 0 (;@4;) 3 (;@1;) 1 (;@3;) 0 (;@4;)
          end
          i32.const 0
          i32.const 2
          i32.store8 offset=1064932
          call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
          i32.const 8192
          i32.const 1
          call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          i32.const 3
          i32.store8 offset=1064932
          i32.const 0
          i64.const 0
          i64.store offset=1064924 align=4
          i32.const 0
          i64.const 8192
          i64.store offset=1064916 align=4
          i32.const 0
          local.get 1
          i32.store offset=1064912
          i32.const 0
          i32.const 0
          i32.store8 offset=1064908
        end
        local.get 0
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1
      i32.const 8192
      i32.const 1058236
      call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
      unreachable
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 1057092
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1057392
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN3std2io5stdio6Stderr4lock17h98ad03a92772c918E (type 3) (param i32) (result i32)
    (local i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i64.load offset=1065008
            local.tee 3
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
            i32.const 0
            i64.load offset=1065024
            local.set 4
            loop  ;; label = @5
              local.get 4
              i64.const -1
              i64.eq
              br_if 2 (;@3;)
              i32.const 0
              local.get 4
              i64.const 1
              i64.add
              local.tee 3
              i32.const 0
              i64.load offset=1065024
              local.tee 5
              local.get 5
              local.get 4
              i64.eq
              local.tee 0
              select
              i64.store offset=1065024
              local.get 5
              local.set 4
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 0
            local.get 3
            i64.store offset=1065008
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 2
              i64.load
              i64.eq
              br_if 0 (;@5;)
              local.get 2
              i32.load8_u offset=12
              local.set 0
              local.get 2
              i32.const 1
              i32.store8 offset=12
              local.get 1
              local.get 0
              i32.store8 offset=7
              local.get 0
              br_if 3 (;@2;)
              local.get 2
              i32.const 1
              i32.store offset=8
              local.get 2
              local.get 3
              i64.store
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.tee 0
            i32.const -1
            i32.eq
            br_if 3 (;@1;)
            local.get 2
            local.get 0
            i32.const 1
            i32.add
            i32.store offset=8
          end
          local.get 1
          i32.const 32
          i32.add
          global.set $__stack_pointer
          local.get 2
          return
        end
        call $_ZN3std6thread8ThreadId3new9exhausted17h84cde9d3faa1db7cE
        unreachable
      end
      local.get 1
      i64.const 0
      i64.store offset=20 align=4
      local.get 1
      i64.const 17179869185
      i64.store offset=12 align=4
      local.get 1
      i32.const 1057308
      i32.store offset=8
      i32.const 0
      local.get 1
      i32.const 7
      i32.add
      i32.const 1057388
      local.get 1
      i32.const 8
      i32.add
      i32.const 1057316
      call $_ZN4core9panicking13assert_failed17ha5d93649e88ec3a6E
      unreachable
    end
    i32.const 1057332
    i32.const 38
    i32.const 1057372
    call $_ZN4core6option13expect_failed17haca81fcbfb12091aE
    unreachable)
  (func $_ZN3std6thread8ThreadId3new9exhausted17h84cde9d3faa1db7cE (type 1)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 1057600
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1057608
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h65da95ed8c52819dE (type 1)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1064976
            br_table 0 (;@4;) 0 (;@4;) 3 (;@1;) 1 (;@3;) 0 (;@4;)
          end
          i32.const 0
          i32.const 2
          i32.store8 offset=1064976
          call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
          i32.const 1024
          i32.const 1
          call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          i32.const 3
          i32.store8 offset=1064976
          i32.const 0
          local.get 1
          i32.store offset=1064960
          i32.const 0
          i64.const 4398046511104
          i64.store offset=1064952
          i32.const 0
          i64.const 0
          i64.store offset=1064936
          i32.const 0
          i32.const 0
          i32.store8 offset=1064968
          i32.const 0
          i32.const 0
          i32.store offset=1064964
          i32.const 0
          i32.const 0
          i32.store8 offset=1064948
          i32.const 0
          i32.const 0
          i32.store offset=1064944
        end
        local.get 0
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1
      i32.const 1024
      i32.const 1056528
      call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
      unreachable
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 1057092
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1057392
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN3std2io5stdio6stdout17ha5a1a65d719020c4E (type 9) (result i32)
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1064976
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h65da95ed8c52819dE
    end
    i32.const 1064936)
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h4774db78eb753c8fE (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            local.tee 5
            local.get 1
            i32.load offset=8
            local.tee 6
            i32.sub
            i32.le_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 6
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=4
            local.set 7
            i32.const 0
            local.set 8
            loop  ;; label = @5
              local.get 4
              local.get 6
              local.get 8
              i32.sub
              local.tee 9
              i32.store offset=4
              local.get 4
              local.get 7
              local.get 8
              i32.add
              local.tee 10
              i32.store
              local.get 4
              i32.const 8
              i32.add
              i32.const 1
              local.get 4
              i32.const 1
              call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.load16_u offset=8
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 9
                        local.set 11
                        local.get 4
                        i32.load16_u offset=10
                        local.tee 12
                        i32.const 8
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 1
                        i32.const 0
                        i32.store8 offset=12
                        local.get 12
                        i32.const 27
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 12
                        i64.extend_i32_u
                        i64.const 32
                        i64.shl
                        local.set 13
                        br 2 (;@8;)
                      end
                      local.get 4
                      i32.load offset=12
                      local.set 11
                    end
                    local.get 1
                    i32.const 0
                    i32.store8 offset=12
                    local.get 11
                    br_if 1 (;@7;)
                    i32.const 1056736
                    i64.extend_i32_u
                    i64.const 32
                    i64.shl
                    i64.const 2
                    i64.or
                    local.set 13
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 9
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 10
                      local.get 9
                      memory.copy
                    end
                    local.get 1
                    local.get 9
                    i32.store offset=8
                    local.get 9
                    local.set 6
                  end
                  local.get 13
                  i64.const 255
                  i64.and
                  i64.const 4
                  i64.eq
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 13
                  i64.store align=4
                  br 4 (;@3;)
                end
                local.get 11
                local.get 8
                i32.add
                local.set 8
              end
              local.get 8
              local.get 6
              i32.lt_u
              br_if 0 (;@5;)
            end
            local.get 8
            local.get 6
            i32.gt_u
            br_if 2 (;@2;)
            i32.const 0
            local.set 6
            local.get 1
            i32.const 0
            i32.store offset=8
          end
          block  ;; label = @4
            local.get 3
            local.get 5
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=4
              local.get 6
              i32.add
              local.get 2
              local.get 3
              memory.copy
            end
            local.get 0
            i32.const 4
            i32.store8
            local.get 1
            local.get 6
            local.get 3
            i32.add
            i32.store offset=8
            br 1 (;@3;)
          end
          i64.const 0
          local.set 14
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 4
                    local.get 3
                    i32.store offset=4
                    local.get 4
                    local.get 2
                    i32.store
                    local.get 4
                    i32.const 8
                    i32.add
                    i32.const 1
                    local.get 4
                    i32.const 1
                    call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.load16_u offset=8
                            i32.const 1
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 4
                            i64.load16_u offset=10
                            local.tee 13
                            i64.const 27
                            i64.eq
                            br_if 3 (;@9;)
                            local.get 13
                            i64.const 32
                            i64.shl
                            local.set 13
                            br 1 (;@11;)
                          end
                          local.get 4
                          i32.load offset=12
                          local.tee 8
                          br_if 1 (;@10;)
                          i32.const 0
                          i64.load offset=1056368
                          local.set 13
                        end
                        local.get 13
                        i64.const 32
                        i64.shr_u
                        local.set 14
                        local.get 13
                        i32.wrap_i64
                        i32.const 255
                        i32.and
                        local.tee 8
                        i32.const 4
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 8
                        br_if 5 (;@5;)
                        local.get 14
                        i64.const 8
                        i64.ne
                        br_if 5 (;@5;)
                        i64.const 4
                        local.set 14
                        i64.const 0
                        local.set 13
                        br 6 (;@4;)
                      end
                      local.get 3
                      local.get 8
                      i32.lt_u
                      br_if 8 (;@1;)
                      local.get 2
                      local.get 8
                      i32.add
                      local.set 2
                      local.get 3
                      local.get 8
                      i32.sub
                      local.set 3
                    end
                    local.get 3
                    br_if 0 (;@8;)
                  end
                end
                i64.const 0
                local.set 13
              end
              local.get 13
              i64.const 4294967040
              i64.and
              local.get 14
              i64.const 32
              i64.shl
              i64.or
              local.set 13
              i64.const 4
              local.set 14
              br 1 (;@4;)
            end
            local.get 13
            i64.const 255
            i64.and
            local.set 14
            local.get 13
            i64.const -256
            i64.and
            local.set 13
          end
          local.get 1
          i32.const 0
          i32.store8 offset=12
          local.get 0
          local.get 14
          local.get 13
          i64.or
          i64.store align=4
        end
        local.get 4
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 0
      local.get 8
      local.get 6
      i32.const 1058220
      call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
      unreachable
    end
    local.get 8
    local.get 3
    local.get 3
    i32.const 1056376
    call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
    unreachable)
  (func $_ZN3std2rt19lang_start_internal17h15e0ed7fca656539E (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i64 i64 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i64.load offset=1065008
        local.tee 6
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        i32.const 0
        i64.load offset=1065024
        local.set 7
        loop  ;; label = @3
          local.get 7
          i64.const -1
          i64.eq
          br_if 2 (;@1;)
          i32.const 0
          local.get 7
          i64.const 1
          i64.add
          local.tee 6
          i32.const 0
          i64.load offset=1065024
          local.tee 8
          local.get 8
          local.get 7
          i64.eq
          local.tee 9
          select
          i64.store offset=1065024
          local.get 8
          local.set 7
          local.get 9
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 0
        local.get 6
        i64.store offset=1065008
      end
      i32.const 0
      local.get 6
      i64.store offset=1065000
      local.get 0
      local.get 1
      i32.load offset=20
      call_indirect (type 3)
      local.set 9
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1064984
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        local.get 5
        i32.const 1
        i32.store8 offset=15
        local.get 5
        i32.const 15
        i32.add
        call $_ZN3std3sys4sync4once10no_threads4Once4call17h53b4ce9274b798cdE
      end
      local.get 5
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 9
      return
    end
    call $_ZN3std6thread8ThreadId3new9exhausted17h84cde9d3faa1db7cE
    unreachable)
  (func $_ZN3std3sys4sync4once10no_threads4Once4call17h53b4ce9274b798cdE (type 0) (param i32)
    (local i32 i32 i64 i64 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load8_u offset=1064984
                    br_table 0 (;@8;) 1 (;@7;) 3 (;@5;) 7 (;@1;) 0 (;@8;)
                  end
                  i32.const 0
                  i32.const 2
                  i32.store8 offset=1064984
                  local.get 0
                  i32.load8_u
                  local.set 2
                  local.get 0
                  i32.const 0
                  i32.store8
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 0
                      i32.store8 offset=39
                      block  ;; label = @10
                        i32.const 0
                        i32.load8_u offset=1064976
                        i32.const 3
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 1
                        i32.const 39
                        i32.add
                        call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hd4df922840eb331eE
                        local.get 1
                        i32.load8_u offset=39
                        br_if 8 (;@2;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i64.load offset=1065008
                        local.tee 3
                        i64.const 0
                        i64.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        i64.load offset=1065024
                        local.set 4
                        loop  ;; label = @11
                          local.get 4
                          i64.const -1
                          i64.eq
                          br_if 5 (;@6;)
                          i32.const 0
                          local.get 4
                          i64.const 1
                          i64.add
                          local.tee 3
                          i32.const 0
                          i64.load offset=1065024
                          local.tee 5
                          local.get 5
                          local.get 4
                          i64.eq
                          local.tee 0
                          select
                          i64.store offset=1065024
                          local.get 5
                          local.set 4
                          local.get 0
                          i32.eqz
                          br_if 0 (;@11;)
                        end
                        i32.const 0
                        local.get 3
                        i64.store offset=1065008
                      end
                      local.get 3
                      i32.const 0
                      i64.load offset=1064936
                      i64.eq
                      br_if 1 (;@8;)
                      i32.const 0
                      i32.load8_u offset=1064948
                      local.set 2
                      i32.const 1
                      local.set 0
                      i32.const 0
                      i32.const 1
                      i32.store8 offset=1064948
                      local.get 2
                      br_if 7 (;@2;)
                      i32.const 0
                      local.get 3
                      i64.store offset=1064936
                      br 6 (;@3;)
                    end
                    i32.const 1057408
                    call $_ZN4core6option13unwrap_failed17h4201e3fa52b09e6aE
                    unreachable
                  end
                  i32.const 0
                  i32.load offset=1064944
                  local.tee 0
                  i32.const -1
                  i32.ne
                  br_if 3 (;@4;)
                  br 5 (;@2;)
                end
                local.get 1
                i32.const 0
                i32.store offset=28
                local.get 1
                i32.const 1
                i32.store offset=16
                local.get 1
                i32.const 1057028
                i32.store offset=12
                local.get 1
                i64.const 4
                i64.store offset=20 align=4
                local.get 1
                i32.const 12
                i32.add
                i32.const 1056748
                call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
                unreachable
              end
              call $_ZN3std6thread8ThreadId3new9exhausted17h84cde9d3faa1db7cE
              unreachable
            end
            local.get 1
            i32.const 0
            i32.store offset=28
            local.get 1
            i32.const 1
            i32.store offset=16
            local.get 1
            i32.const 1057092
            i32.store offset=12
            local.get 1
            i64.const 4
            i64.store offset=20 align=4
            local.get 1
            i32.const 12
            i32.add
            i32.const 1056748
            call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
            unreachable
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 0
        end
        i32.const 0
        local.get 0
        i32.store offset=1064944
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1064952
                br_if 0 (;@6;)
                i32.const 0
                i32.const -1
                i32.store offset=1064952
                i32.const 0
                i32.load8_u offset=1064968
                br_if 3 (;@3;)
                i32.const 0
                local.set 0
                i32.const 0
                i32.load offset=1064964
                local.tee 6
                i32.eqz
                br_if 3 (;@3;)
                i32.const 0
                i32.load offset=1064960
                local.set 7
                loop  ;; label = @7
                  local.get 1
                  local.get 6
                  local.get 0
                  i32.sub
                  local.tee 8
                  i32.store offset=44
                  local.get 1
                  local.get 7
                  local.get 0
                  i32.add
                  local.tee 9
                  i32.store offset=40
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.const 1
                  local.get 1
                  i32.const 40
                  i32.add
                  i32.const 1
                  call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.load16_u offset=12
                            i32.const 1
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 8
                            local.set 2
                            local.get 1
                            i32.load16_u offset=14
                            local.tee 10
                            i32.const -8
                            i32.add
                            br_table 1 (;@11;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 2 (;@10;) 4 (;@8;) 2 (;@10;)
                          end
                          local.get 1
                          i32.load offset=16
                          local.set 2
                        end
                        local.get 2
                        br_if 1 (;@9;)
                        i32.const 1056736
                        i64.extend_i32_u
                        i64.const 32
                        i64.shl
                        i64.const 2
                        i64.or
                        local.set 4
                        br 5 (;@5;)
                      end
                      local.get 10
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      local.set 4
                      br 4 (;@5;)
                    end
                    local.get 2
                    local.get 0
                    i32.add
                    local.set 0
                  end
                  local.get 0
                  local.get 6
                  i32.ge_u
                  br_if 3 (;@4;)
                  br 0 (;@7;)
                end
              end
              i32.const 1056544
              call $_ZN4core4cell22panic_already_borrowed17h9e16ee2a0e05415dE
              unreachable
            end
            local.get 4
            i32.wrap_i64
            local.set 2
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 9
              local.get 8
              memory.copy
            end
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.and
              local.tee 0
              i32.const 4
              i32.gt_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
            end
            local.get 4
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 0
            i32.load
            local.set 6
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.load
              local.tee 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 8
              call_indirect (type 0)
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 8
              local.get 2
              i32.load offset=8
              call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
            br 1 (;@3;)
          end
          local.get 0
          local.get 6
          i32.le_u
          br_if 0 (;@3;)
          i32.const 0
          local.get 0
          local.get 6
          i32.const 1058220
          call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
          unreachable
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1064956
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1064960
          local.get 0
          i32.const 1
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        i32.const 0
        i64.const 4294967296
        i64.store offset=1064956 align=4
        i32.const 0
        i32.const 0
        i32.load offset=1064952
        i32.const 1
        i32.add
        i32.store offset=1064952
        i32.const 0
        i32.const 0
        i32.load offset=1064944
        i32.const -1
        i32.add
        local.tee 0
        i32.store offset=1064944
        i32.const 0
        i32.const 0
        i32.store8 offset=1064968
        i32.const 0
        i32.const 0
        i32.store offset=1064964
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        i64.const 0
        i64.store offset=1064936
        i32.const 0
        i32.const 0
        i32.store8 offset=1064948
      end
      i32.const 0
      i32.const 3
      i32.store8 offset=1064984
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3env11current_dir17h8cacd901e2d7e532E (type 0) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
    i32.const 512
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        i32.const 512
        i32.const 1
        call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.store offset=8
        local.get 1
        i32.const 512
        i32.store offset=4
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 512
            call $getcwd
            br_if 0 (;@4;)
            i32.const 512
            local.set 2
            loop  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1065552
                local.tee 4
                i32.const 68
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 4
                i32.store offset=8
                local.get 0
                i64.const 2147483648
                i64.store align=4
                local.get 2
                i32.eqz
                br_if 3 (;@3;)
                local.get 3
                local.get 2
                i32.const 1
                call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
                br 3 (;@3;)
              end
              local.get 1
              local.get 2
              i32.store offset=12
              local.get 1
              i32.const 4
              i32.add
              local.get 2
              i32.const 1
              i32.const 1
              i32.const 1
              call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
              local.get 1
              i32.load offset=8
              local.tee 3
              local.get 1
              i32.load offset=4
              local.tee 2
              call $getcwd
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 1
          local.get 3
          call $strlen
          local.tee 4
          i32.store offset=12
          block  ;; label = @4
            local.get 2
            local.get 4
            i32.le_u
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                local.get 3
                local.get 2
                i32.const 1
                call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
                br 1 (;@5;)
              end
              local.get 3
              local.get 2
              i32.const 1
              local.get 4
              call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_realloc
              local.tee 5
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 1
            local.get 4
            i32.store offset=4
            local.get 1
            local.get 5
            i32.store offset=8
          end
          local.get 0
          local.get 1
          i64.load offset=4 align=4
          i64.store align=4
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          i32.const 4
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.store
        end
        local.get 1
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1
      i32.const 512
      i32.const 1056952
      call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
      unreachable
    end
    i32.const 1
    local.get 4
    i32.const 1056968
    call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
    unreachable)
  (func $_ZN3std3env7_var_os17h19fb48da0ef7c2adE (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 416
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 383
          i32.gt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.const 20
            i32.add
            local.get 1
            local.get 2
            memory.copy
          end
          local.get 3
          i32.const 20
          i32.add
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 3
          i32.const 404
          i32.add
          local.get 3
          i32.const 20
          i32.add
          local.get 2
          i32.const 1
          i32.add
          call $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h6ebde75924a414c0E
          block  ;; label = @4
            local.get 3
            i32.load offset=404
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const 0
            i64.load offset=1056824
            i64.store offset=12 align=4
            i32.const -2147483647
            local.set 2
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 3
            i32.load offset=408
            call $getenv
            local.tee 1
            br_if 0 (;@4;)
            i32.const -2147483648
            local.set 2
            br 2 (;@2;)
          end
          i32.const 0
          local.set 4
          local.get 1
          call $strlen
          local.tee 2
          i32.const 0
          i32.lt_s
          br_if 2 (;@1;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              br 1 (;@4;)
            end
            call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
            i32.const 1
            local.set 4
            local.get 2
            i32.const 1
            call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
            local.tee 5
            i32.eqz
            br_if 3 (;@1;)
          end
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 1
            local.get 2
            memory.copy
          end
          local.get 3
          local.get 2
          i32.store offset=16
          local.get 3
          local.get 5
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        call $_ZN3std3sys3pal6common14small_c_string24run_with_cstr_allocating17hfb2b91bb5513c6a0E
        local.get 3
        i32.load offset=8
        local.set 2
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const -2147483647
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i64.load offset=12 align=4
          i64.store offset=4 align=4
          local.get 0
          local.get 2
          i32.store
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=12
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=16
          local.tee 2
          i32.load
          local.set 4
          block  ;; label = @4
            local.get 2
            i32.const 4
            i32.add
            i32.load
            local.tee 1
            i32.load
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            call_indirect (type 0)
          end
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            local.get 1
            i32.load offset=8
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
          end
          local.get 2
          i32.const 12
          i32.const 4
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 0
        i32.const -2147483648
        i32.store
      end
      local.get 3
      i32.const 416
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 4
    local.get 2
    i32.const 1058944
    call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
    unreachable)
  (func $_ZN3std3sys3pal6common14small_c_string24run_with_cstr_allocating17hfb2b91bb5513c6a0E (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    local.get 2
    call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h7c82bfd0c45c337aE
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load
          local.tee 2
          i32.const -2147483648
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load offset=4
              local.tee 4
              call $getenv
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.const -2147483648
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 6
            local.get 5
            call $strlen
            local.tee 2
            i32.const 0
            i32.lt_s
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                br_if 0 (;@6;)
                i32.const 1
                local.set 7
                br 1 (;@5;)
              end
              call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
              i32.const 1
              local.set 6
              local.get 2
              i32.const 1
              call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
              local.tee 7
              i32.eqz
              br_if 4 (;@1;)
            end
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 5
              local.get 2
              memory.copy
            end
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 7
            i32.store offset=4
            local.get 0
            local.get 2
            i32.store
          end
          local.get 4
          i32.const 0
          i32.store8
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 1
          i32.const 1
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
          br 1 (;@2;)
        end
        local.get 0
        i32.const -2147483647
        i32.store
        local.get 0
        i32.const 0
        i64.load offset=1056824
        i64.store offset=4 align=4
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        local.get 2
        i32.const 1
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 6
    local.get 2
    i32.const 1058944
    call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
    unreachable)
  (func $_ZN3std3sys3pal6wasip17helpers14abort_internal17h80fffa433f424774E (type 1)
    call $abort
    unreachable)
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hd4df922840eb331eE (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1064976
          br_table 1 (;@2;) 1 (;@2;) 0 (;@3;) 2 (;@1;) 1 (;@2;)
        end
        local.get 1
        i32.const 0
        i32.store offset=24
        local.get 1
        i32.const 1
        i32.store offset=12
        local.get 1
        i32.const 1057092
        i32.store offset=8
        local.get 1
        i64.const 4
        i64.store offset=16 align=4
        local.get 1
        i32.const 8
        i32.add
        i32.const 1057392
        call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
        unreachable
      end
      i32.const 0
      i32.const 3
      i32.store8 offset=1064976
      i32.const 0
      i64.const 1
      i64.store offset=1064960
      i32.const 0
      i64.const 0
      i64.store offset=1064952
      i32.const 0
      i64.const 0
      i64.store offset=1064936
      local.get 0
      i32.const 1
      i32.store8
      i32.const 0
      i32.const 0
      i32.store8 offset=1064968
      i32.const 0
      i32.const 0
      i32.store8 offset=1064948
      i32.const 0
      i32.const 0
      i32.store offset=1064944
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3sys9backtrace13BacktraceLock5print17hb917f2aa2f09959bE (type 6) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 1
    i32.store offset=12
    local.get 4
    i32.const 1056136
    i32.store offset=8
    local.get 4
    i64.const 1
    i64.store offset=20 align=4
    local.get 4
    local.get 3
    i32.store8 offset=47
    local.get 4
    i32.const 8
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 4
    i32.const 47
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 4
    local.get 4
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 0
    local.get 1
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    call_indirect (type 4)
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN98_$LT$std..sys..backtrace..BacktraceLock..print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h394bc400cfeaa862E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 0
    i32.load8_u
    local.set 0
    local.get 2
    i32.const 4
    i32.add
    call $_ZN3std3env11current_dir17h8cacd901e2d7e532E
    local.get 2
    i64.load offset=8 align=4
    local.set 5
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      local.tee 1
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 255
      i64.and
      i64.const 3
      i64.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 6
      i32.load
      local.set 7
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.add
        i32.load
        local.tee 8
        i32.load
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 9
        call_indirect (type 0)
      end
      block  ;; label = @2
        local.get 8
        i32.load offset=4
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 9
        local.get 8
        i32.load offset=8
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 6
      i32.const 12
      i32.const 4
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 1057168
          i32.const 17
          local.get 3
          i32.load offset=12
          local.tee 3
          call_indirect (type 5)
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 4
            i32.const 1057185
            i32.const 88
            local.get 3
            call_indirect (type 5)
            br_if 1 (;@3;)
          end
          i32.const 0
          local.set 4
          local.get 1
          i32.const -2147483648
          i32.or
          i32.const -2147483648
          i32.eq
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        i32.const 1
        local.set 4
        local.get 1
        i32.const -2147483648
        i32.or
        i32.const -2147483648
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 5
      i32.wrap_i64
      local.get 1
      i32.const 1
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN3std9panicking13panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17hd86b4b8cd5188c6bE (type 0) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 2
    i32.load offset=12
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 3
          br_if 1 (;@2;)
          i32.const 1
          local.set 2
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.tee 2
        i32.load offset=4
        local.set 3
        local.get 2
        i32.load
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const -2147483648
      i32.store
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 1057940
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u offset=8
      local.get 0
      i32.load8_u offset=9
      call $_ZN3std9panicking15panic_with_hook17h0f3842856adda0c4E
      unreachable
    end
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store
    local.get 1
    i32.const 1057912
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.tee 0
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=9
    call $_ZN3std9panicking15panic_with_hook17h0f3842856adda0c4E
    unreachable)
  (func $_ZN3std3sys9backtrace4lock17h1bf7b472fdf22e49E (type 9) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    i32.load8_u offset=1064985
    local.set 1
    i32.const 0
    i32.const 1
    i32.store8 offset=1064985
    local.get 0
    local.get 1
    i32.store8 offset=7
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i64.const 0
      i64.store offset=20 align=4
      local.get 0
      i64.const 17179869185
      i64.store offset=12 align=4
      local.get 0
      i32.const 1057308
      i32.store offset=8
      i32.const 0
      local.get 0
      i32.const 7
      i32.add
      i32.const 1057388
      local.get 0
      i32.const 8
      i32.add
      i32.const 1057316
      call $_ZN4core9panicking13assert_failed17ha5d93649e88ec3a6E
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer
    i32.const 1064985)
  (func $_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hf0be82f049ce73b6E (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 2
    local.get 0
    i32.const 1
    i32.store8
    local.get 1
    local.get 2
    i32.store8 offset=7
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=20 align=4
      local.get 1
      i64.const 17179869185
      i64.store offset=12 align=4
      local.get 1
      i32.const 1057308
      i32.store offset=8
      i32.const 0
      local.get 1
      i32.const 7
      i32.add
      i32.const 1057388
      local.get 1
      i32.const 8
      i32.add
      i32.const 1057316
      call $_ZN4core9panicking13assert_failed17ha5d93649e88ec3a6E
      unreachable
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std5alloc24default_alloc_error_hook17hf81fbf296b2d6ee4E (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      call $_RNvCsj3IbkTTFM3W_7___rustc42___rust_alloc_error_handler_should_panic_v2
      i32.const 255
      i32.and
      br_if 0 (;@1;)
      local.get 2
      i32.const 2
      i32.store offset=12
      local.get 2
      i32.const 1057460
      i32.store offset=8
      local.get 2
      i64.const 1
      i64.store offset=20 align=4
      local.get 2
      i32.const 6
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 2
      i32.const 40
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=32
      local.get 2
      local.get 1
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 32
      i32.add
      i32.store offset=16
      local.get 2
      local.get 2
      i32.const 47
      i32.add
      local.get 2
      i32.const 8
      i32.add
      call $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E
      local.get 2
      i32.load offset=4
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u
          local.tee 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 4
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          call_indirect (type 0)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          local.get 1
          i32.load offset=8
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 3
        i32.const 12
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 2
    i32.store offset=12
    local.get 2
    i32.const 1057492
    i32.store offset=8
    local.get 2
    i64.const 1
    i64.store offset=20 align=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 2
    i32.const 8
    i32.add
    i32.const 1057508
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN3std5panic19get_backtrace_style17hc8359c16e46261abE (type 9) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1064992
      i32.const -1
      i32.add
      local.tee 2
      i32.const 255
      i32.and
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.const 1057524
      i32.const 14
      call $_ZN3std3env7_var_os17h19fb48da0ef7c2adE
      i32.const 2
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const -2147483648
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=8
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=12
                  i32.const -1
                  i32.add
                  br_table 1 (;@6;) 2 (;@5;) 2 (;@5;) 0 (;@7;) 2 (;@5;)
                end
                local.get 4
                i32.load align=1
                i32.const 1819047270
                i32.ne
                br_if 1 (;@5;)
                i32.const 1
                local.set 2
                i32.const 2
                local.set 1
                local.get 3
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 4
              i32.load8_u
              i32.const 48
              i32.eq
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 2
            i32.const 1
            local.set 1
            local.get 3
            i32.eqz
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          i32.const 2
          local.set 2
          i32.const 3
          local.set 1
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 3
        i32.const 1
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      i32.const 0
      i32.const 0
      i32.load8_u offset=1064992
      local.tee 3
      local.get 1
      local.get 3
      select
      i32.store8 offset=1064992
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      i32.const 3
      local.set 2
      local.get 3
      i32.const 4
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 33619971
      local.get 3
      i32.const 3
      i32.shl
      i32.const 248
      i32.and
      i32.shr_u
      local.set 2
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN3std9panicking15panic_with_hook17h0f3842856adda0c4E (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=32
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 2
    i32.store offset=36
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1
            call $_ZN3std9panicking11panic_count8increase17h02ee2c23b586b5abE
            i32.const 255
            i32.and
            local.tee 6
            i32.const 2
            i32.eq
            br_if 0 (;@4;)
            local.get 6
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.const 16
            i32.add
            local.get 0
            local.get 1
            i32.load offset=24
            call_indirect (type 2)
            local.get 5
            local.get 5
            i32.load offset=20
            i32.const 0
            local.get 5
            i32.load offset=16
            local.tee 1
            select
            i32.store offset=44
            local.get 5
            local.get 1
            i32.const 1
            local.get 1
            select
            i32.store offset=40
            local.get 5
            i32.const 3
            i32.store offset=76
            local.get 5
            i32.const 1058096
            i32.store offset=72
            local.get 5
            i64.const 2
            i64.store offset=84 align=4
            local.get 5
            i32.const 9
            i64.extend_i32_u
            i64.const 32
            i64.shl
            local.get 5
            i32.const 40
            i32.add
            i64.extend_i32_u
            i64.or
            i64.store offset=64
            local.get 5
            i32.const 10
            i64.extend_i32_u
            i64.const 32
            i64.shl
            local.get 5
            i32.const 36
            i32.add
            i64.extend_i32_u
            i64.or
            i64.store offset=56
            local.get 5
            local.get 5
            i32.const 56
            i32.add
            i32.store offset=80
            local.get 5
            i32.const 48
            i32.add
            local.get 5
            i32.const 48
            i32.add
            local.get 5
            i32.const 72
            i32.add
            call $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E
            local.get 5
            i32.load8_u offset=48
            local.get 5
            i32.load offset=52
            call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
            br 3 (;@1;)
          end
          i32.const 0
          i32.load offset=1065044
          local.tee 6
          i32.const -1
          i32.gt_s
          br_if 1 (;@2;)
          local.get 5
          i32.const 0
          i32.store offset=88
          local.get 5
          i32.const 1
          i32.store offset=76
          local.get 5
          i32.const 1057160
          i32.store offset=72
          local.get 5
          i64.const 4
          i64.store offset=80 align=4
          local.get 5
          i32.const 56
          i32.add
          local.get 5
          i32.const 48
          i32.add
          local.get 5
          i32.const 72
          i32.add
          call $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E
          local.get 5
          i32.load8_u offset=56
          local.get 5
          i32.load offset=60
          call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
          br 2 (;@1;)
        end
        local.get 5
        i32.const 3
        i32.store offset=76
        local.get 5
        i32.const 1058008
        i32.store offset=72
        local.get 5
        i64.const 2
        i64.store offset=84 align=4
        local.get 5
        i32.const 11
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 5
        i32.const 28
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=64
        local.get 5
        i32.const 10
        i64.extend_i32_u
        i64.const 32
        i64.shl
        local.get 5
        i32.const 36
        i32.add
        i64.extend_i32_u
        i64.or
        i64.store offset=56
        local.get 5
        local.get 5
        i32.const 56
        i32.add
        i32.store offset=80
        local.get 5
        i32.const 48
        i32.add
        local.get 5
        i32.const 48
        i32.add
        local.get 5
        i32.const 72
        i32.add
        call $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E
        local.get 5
        i32.load8_u offset=48
        local.get 5
        i32.load offset=52
        call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
        br 1 (;@1;)
      end
      i32.const 0
      local.get 6
      i32.const 1
      i32.add
      i32.store offset=1065044
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1065048
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=20
          call_indirect (type 2)
          local.get 5
          local.get 4
          i32.store8 offset=85
          local.get 5
          local.get 3
          i32.store8 offset=84
          local.get 5
          local.get 2
          i32.store offset=80
          local.get 5
          local.get 5
          i64.load offset=8
          i64.store offset=72 align=4
          i32.const 0
          i32.load offset=1065048
          local.get 5
          i32.const 72
          i32.add
          i32.const 0
          i32.load offset=1065052
          i32.load offset=20
          call_indirect (type 2)
          br 1 (;@2;)
        end
        local.get 5
        local.get 0
        local.get 1
        i32.load offset=20
        call_indirect (type 2)
        local.get 5
        local.get 4
        i32.store8 offset=85
        local.get 5
        local.get 3
        i32.store8 offset=84
        local.get 5
        local.get 2
        i32.store offset=80
        local.get 5
        local.get 5
        i64.load
        i64.store offset=72 align=4
        local.get 5
        i32.const 72
        i32.add
        call $_ZN3std9panicking12default_hook17h5adb38adbcafb5eaE
      end
      i32.const 0
      i32.const 0
      i32.load offset=1065044
      i32.const -1
      i32.add
      i32.store offset=1065044
      i32.const 0
      i32.const 0
      i32.store8 offset=1065036
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 5
        i32.const 0
        i32.store offset=88
        local.get 5
        i32.const 1
        i32.store offset=76
        local.get 5
        i32.const 1058168
        i32.store offset=72
        local.get 5
        i64.const 4
        i64.store offset=80 align=4
        local.get 5
        i32.const 56
        i32.add
        local.get 5
        i32.const 48
        i32.add
        local.get 5
        i32.const 72
        i32.add
        call $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E
        local.get 5
        i32.load8_u offset=56
        local.get 5
        i32.load offset=60
        call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      call $_RNvCsj3IbkTTFM3W_7___rustc10rust_panic
      unreachable
    end
    call $_ZN3std7process5abort17ha1b58ce6fe11d933E
    unreachable)
  (func $_ZN3std9panicking11panic_count8increase17h02ee2c23b586b5abE (type 3) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    i32.const 0
    i32.load offset=1065040
    local.tee 2
    i32.const 1
    i32.add
    i32.store offset=1065040
    block  ;; label = @1
      local.get 2
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 1
      local.set 1
      i32.const 0
      i32.load8_u offset=1065036
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      i32.store8 offset=1065036
      i32.const 0
      i32.const 0
      i32.load offset=1065032
      i32.const 1
      i32.add
      i32.store offset=1065032
      i32.const 2
      local.set 1
    end
    local.get 1)
  (func $_ZN3std9panicking12default_hook17h5adb38adbcafb5eaE (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 3
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=13
      br_if 0 (;@1;)
      i32.const 1
      local.set 2
      i32.const 0
      i32.load offset=1065032
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      call $_ZN3std5panic19get_backtrace_style17hc8359c16e46261abE
      i32.const 255
      i32.and
      local.set 2
    end
    local.get 1
    local.get 2
    i32.store8 offset=11
    local.get 1
    local.get 0
    i32.load offset=8
    i32.store offset=12
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN3std9panicking14payload_as_str17h7b7d5e4ad65b9735E
    local.get 1
    local.get 1
    i64.load
    i64.store offset=16 align=4
    local.get 1
    local.get 1
    i32.const 11
    i32.add
    i32.store offset=32
    local.get 1
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=28
    local.get 1
    local.get 1
    i32.const 12
    i32.add
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1064904
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=1064904
        i32.const 0
        i32.load offset=1064900
        local.set 0
        i32.const 0
        i32.const 0
        i32.store offset=1064900
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 24
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call $_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hf0be82f049ce73b6E
        local.tee 2
        i32.const 4
        i32.add
        i32.const 1057624
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hcf48a99f0f9379f3E
        local.get 2
        i32.const 0
        i32.store8
        i32.const 0
        i32.const 1
        i32.store8 offset=1064904
        i32.const 0
        i32.load offset=1064900
        local.set 2
        i32.const 0
        local.get 0
        i32.store offset=1064900
        local.get 1
        local.get 2
        i32.store offset=40
        local.get 1
        i32.const 1
        i32.store offset=36
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load
        local.tee 0
        i32.const -1
        i32.add
        i32.store
        local.get 0
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.const 36
        i32.add
        i32.const 4
        i32.add
        call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h206e4a20460f1940E
        br 1 (;@1;)
      end
      local.get 1
      i32.const 24
      i32.add
      local.get 1
      i32.const 47
      i32.add
      i32.const 1057664
      call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hcf48a99f0f9379f3E
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std9panicking14payload_as_str17h7b7d5e4ad65b9735E (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=12
    local.tee 4
    call_indirect (type 2)
    i32.const 4
    local.set 2
    local.get 1
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i64.load
        i64.const 7199936582794304877
        i64.xor
        local.get 3
        i64.load offset=8
        i64.const -5076933981314334344
        i64.xor
        i64.or
        i64.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        local.get 4
        call_indirect (type 2)
        block  ;; label = @3
          local.get 3
          i64.load
          i64.const -8763471505448854138
          i64.xor
          local.get 3
          i64.load offset=8
          i64.const -2766448748896931805
          i64.xor
          i64.or
          i64.const 0
          i64.eq
          br_if 0 (;@3;)
          i32.const 1057968
          local.set 1
          i32.const 12
          local.set 2
          br 2 (;@1;)
        end
        local.get 1
        i32.const 4
        i32.add
        local.set 5
        i32.const 8
        local.set 2
      end
      local.get 1
      local.get 2
      i32.add
      i32.load
      local.set 2
      local.get 5
      i32.load
      local.set 1
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17hcf48a99f0f9379f3E (type 4) (param i32 i32 i32)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    call $_ZN3std3sys9backtrace4lock17h1bf7b472fdf22e49E
    local.set 4
    local.get 0
    i64.load align=4
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 5
    i64.store offset=8 align=4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1065016
        local.tee 6
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i64.load offset=1065000
            local.tee 5
            i64.eqz
            br_if 0 (;@4;)
            i32.const 0
            i64.load offset=1065008
            local.get 5
            i64.eq
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 8
          i32.add
          i32.const 0
          local.get 3
          call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he48b9b7b9b6f6d2eE
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        i32.const 1057538
        i32.const 4
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he48b9b7b9b6f6d2eE
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 6
        i32.load offset=8
        local.tee 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        local.get 7
        local.get 6
        i32.const 12
        i32.add
        i32.load
        i32.const -1
        i32.add
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he48b9b7b9b6f6d2eE
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 6
        i64.load
        i32.const 0
        i64.load offset=1065000
        i64.ne
        br_if 0 (;@2;)
        local.get 3
        i32.const 8
        i32.add
        i32.const 1057538
        i32.const 4
        call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he48b9b7b9b6f6d2eE
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.add
      i32.const 0
      local.get 3
      call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he48b9b7b9b6f6d2eE
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            i32.load8_u
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 3 (;@1;) 0 (;@4;)
          end
          local.get 3
          i32.const 8
          i32.add
          local.get 1
          local.get 2
          i32.load offset=36
          i32.const 0
          call $_ZN3std3sys9backtrace13BacktraceLock5print17hb917f2aa2f09959bE
          local.get 3
          i32.load8_u offset=8
          local.get 3
          i32.load offset=12
          call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        i32.load offset=36
        i32.const 1
        call $_ZN3std3sys9backtrace13BacktraceLock5print17hb917f2aa2f09959bE
        local.get 3
        i32.load8_u offset=8
        local.get 3
        i32.load offset=12
        call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
        br 1 (;@1;)
      end
      i32.const 0
      i32.load8_u offset=1064884
      local.set 0
      i32.const 0
      i32.const 0
      i32.store8 offset=1064884
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 3
      i32.const 1
      i32.store offset=12
      local.get 3
      i32.const 1057784
      i32.store offset=8
      local.get 3
      i64.const 4
      i64.store offset=16 align=4
      local.get 3
      local.get 1
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      i32.load offset=36
      call_indirect (type 4)
      local.get 3
      i32.load8_u
      local.get 3
      i32.load offset=4
      call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2b85f96c72b92631E
    end
    local.get 4
    i32.const 0
    i32.store8
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he48b9b7b9b6f6d2eE (type 4) (param i32 i32 i32)
    (local i32 i64 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 608
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.const 9
    local.get 1
    select
    i32.store offset=4
    local.get 3
    local.get 1
    i32.const 1057792
    local.get 1
    select
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i64.load offset=1065008
        local.tee 4
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        i32.const 0
        i64.load offset=1065024
        local.set 5
        loop  ;; label = @3
          local.get 5
          i64.const -1
          i64.eq
          br_if 2 (;@1;)
          i32.const 0
          local.get 5
          i64.const 1
          i64.add
          local.tee 4
          i32.const 0
          i64.load offset=1065024
          local.tee 6
          local.get 6
          local.get 5
          i64.eq
          local.tee 1
          select
          i64.store offset=1065024
          local.get 6
          local.set 5
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 0
        local.get 4
        i64.store offset=1065008
      end
      local.get 3
      local.get 4
      i64.store offset=8
      block  ;; label = @2
        i32.const 512
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.add
        i32.const 0
        i32.const 512
        memory.fill
      end
      local.get 3
      i64.const 0
      i64.store offset=536
      local.get 3
      i32.const 512
      i32.store offset=532
      local.get 3
      local.get 3
      i32.const 16
      i32.add
      i32.store offset=528
      local.get 0
      i64.load32_u
      local.set 5
      local.get 0
      i64.load32_u offset=4
      local.set 6
      local.get 3
      i32.const 5
      i32.store offset=556
      local.get 3
      i32.const 1057848
      i32.store offset=552
      local.get 3
      i64.const 4
      i64.store offset=564 align=4
      local.get 3
      local.get 6
      i32.const 9
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 4
      i64.or
      local.tee 6
      i64.store offset=600
      local.get 3
      local.get 5
      i32.const 10
      i64.extend_i32_u
      i64.const 32
      i64.shl
      i64.or
      local.tee 5
      i64.store offset=592
      local.get 3
      i32.const 12
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 3
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      local.tee 7
      i64.store offset=584
      local.get 3
      local.get 4
      local.get 3
      i64.extend_i32_u
      i64.or
      local.tee 4
      i64.store offset=576
      local.get 3
      local.get 3
      i32.const 576
      i32.add
      i32.store offset=560
      local.get 3
      i32.const 544
      i32.add
      local.get 3
      i32.const 528
      i32.add
      local.get 3
      i32.const 552
      i32.add
      call $_ZN3std2io5Write9write_fmt17h1ad3df6193a8c41fE
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load8_u offset=544
            local.tee 1
            i32.const 4
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=536
            local.tee 1
            i32.const 513
            i32.lt_u
            br_if 1 (;@3;)
            i32.const 0
            local.get 1
            i32.const 512
            i32.const 1057804
            call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
            unreachable
          end
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=548
            local.tee 1
            i32.load
            local.set 8
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.load
              local.tee 9
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              call_indirect (type 0)
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 9
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              local.get 9
              local.get 2
              i32.load offset=8
              call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
            end
            local.get 1
            i32.const 12
            i32.const 4
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
          end
          local.get 0
          i32.load offset=12
          i32.const 36
          i32.add
          i32.load
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 0
          local.get 3
          i32.const 5
          i32.store offset=556
          local.get 3
          i32.const 1057848
          i32.store offset=552
          local.get 3
          i64.const 4
          i64.store offset=564 align=4
          local.get 3
          local.get 6
          i64.store offset=600
          local.get 3
          local.get 5
          i64.store offset=592
          local.get 3
          local.get 7
          i64.store offset=584
          local.get 3
          local.get 4
          i64.store offset=576
          local.get 3
          local.get 3
          i32.const 576
          i32.add
          i32.store offset=560
          local.get 3
          i32.const 544
          i32.add
          local.get 0
          local.get 3
          i32.const 552
          i32.add
          local.get 1
          call_indirect (type 4)
          local.get 3
          i32.load offset=548
          local.set 0
          block  ;; label = @4
            local.get 3
            i32.load8_u offset=544
            local.tee 1
            i32.const 4
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
          end
          local.get 0
          i32.load
          local.set 2
          block  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.tee 1
            i32.load
            local.tee 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 8
            call_indirect (type 0)
          end
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 8
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 8
            local.get 1
            i32.load offset=8
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
          br 1 (;@2;)
        end
        local.get 3
        i32.const 576
        i32.add
        local.get 0
        i32.load offset=8
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        local.get 0
        i32.load offset=12
        i32.load offset=28
        call_indirect (type 6)
        local.get 3
        i32.load offset=580
        local.set 0
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=576
          local.tee 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        i32.load
        local.set 2
        block  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 8
          call_indirect (type 0)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 8
          local.get 1
          i32.load offset=8
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 0
        i32.const 12
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 3
      i32.const 608
      i32.add
      global.set $__stack_pointer
      return
    end
    call $_ZN3std6thread8ThreadId3new9exhausted17h84cde9d3faa1db7cE
    unreachable)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf3face4c49472d90E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 2
    local.get 0
    i32.load
    local.tee 1
    i64.load align=4
    i64.store offset=8 align=4
    local.get 2
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 5
    local.get 1
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 2
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    i32.const 9
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    local.get 2
    i64.const 3
    i64.store offset=52 align=4
    local.get 2
    i32.const 3
    i32.store offset=44
    local.get 2
    i32.const 1058904
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=48
    local.get 4
    local.get 3
    local.get 2
    i32.const 40
    i32.add
    call $_ZN4core3fmt5write17h73319cf8ac237dc9E
    local.set 1
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN52_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1e29934985b2b907E (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e0beabc178e76f4E (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 0
        i32.load8_u
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        i32.const 1
        i32.add
        i32.store offset=12
        local.get 1
        i32.const 1058897
        i32.const 4
        local.get 2
        i32.const 12
        i32.add
        i32.const 1058176
        call $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h3742e6e3b4c73cd5E
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1058893
      i32.const 4
      call $_ZN4core3fmt9Formatter9write_str17h93e999e5be78c0f5E
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h43e8d4061b8fb023E (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d5eb23c99b8106dE (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h0fe9c4e3fea6deb2E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9e4131018ad564fbE (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b77ddee99a382a4E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hde02cd8d5a044f92E (type 7) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 33554432
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 67108864
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17ha0ecce11a8029d70E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h859f180d3c7d1af8E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h401b721a1e3cc1edE)
  (func $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hde73a35b28034c35E (type 7) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 33554432
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 67108864
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h0272aba55a44dca6E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h1a29f44be947af21E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hbb46a9202f802e5dE)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h9b30f403c31183adE (type 7) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 33554432
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 67108864
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h171595233070c997E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h4dc0100f6123bafdE
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h830d7118f4bd1e0fE)
  (func $_ZN4core3fmt5Write10write_char17h2ad498c3061297f4E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc56625ca52b2430cE
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc56625ca52b2430cE (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.store offset=4
          local.get 3
          local.get 1
          i32.store
          local.get 3
          i32.const 8
          i32.add
          i32.const 2
          local.get 3
          i32.const 1
          call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load16_u offset=8
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 3
                  i64.load16_u offset=10
                  local.tee 5
                  i64.const 27
                  i64.eq
                  br_if 3 (;@4;)
                  local.get 5
                  i64.const 32
                  i64.shl
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 3
                i32.load offset=12
                local.tee 6
                br_if 1 (;@5;)
                i32.const 0
                i64.load offset=1056368
                local.set 5
              end
              local.get 5
              i64.const 255
              i64.and
              i64.const 4
              i64.eq
              br_if 3 (;@2;)
              local.get 0
              i32.load offset=4
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load8_u
                  local.tee 2
                  i32.const 4
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 3
                  i32.ne
                  br_if 1 (;@6;)
                end
                local.get 1
                i32.load
                local.set 6
                block  ;; label = @7
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 2
                  i32.load
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 4
                  call_indirect (type 0)
                end
                block  ;; label = @7
                  local.get 2
                  i32.load offset=4
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 4
                  local.get 2
                  i32.load offset=8
                  call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
                end
                local.get 1
                i32.const 12
                i32.const 4
                call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
              end
              local.get 0
              local.get 5
              i64.store align=4
              i32.const 1
              local.set 4
              br 3 (;@2;)
            end
            local.get 2
            local.get 6
            i32.lt_u
            br_if 3 (;@1;)
            local.get 1
            local.get 6
            i32.add
            local.set 1
            local.get 2
            local.get 6
            i32.sub
            local.set 2
          end
          local.get 2
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
      return
    end
    local.get 6
    local.get 2
    local.get 2
    i32.const 1056376
    call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
    unreachable)
  (func $_ZN4core3fmt5Write10write_char17h2cfd03e56cc7097eE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    i32.const 0
    local.set 5
    block  ;; label = @1
      i32.const 0
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.load offset=4
      local.tee 6
      local.get 3
      i64.load offset=8
      local.tee 7
      i64.const 4294967295
      local.get 7
      i64.const 4294967295
      i64.lt_u
      select
      i32.wrap_i64
      i32.sub
      local.tee 4
      local.get 4
      local.get 6
      i32.gt_u
      select
      local.tee 4
      local.get 1
      local.get 4
      local.get 1
      i32.lt_u
      select
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load
      local.get 7
      local.get 6
      i64.extend_i32_u
      local.tee 9
      local.get 7
      local.get 9
      i64.lt_u
      select
      i32.wrap_i64
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 8
      memory.copy
    end
    local.get 3
    local.get 7
    local.get 8
    i64.extend_i32_u
    i64.add
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      i32.const 0
      i64.load offset=1056368
      local.tee 7
      i64.const 255
      i64.and
      i64.const 4
      i64.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 4
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          call_indirect (type 0)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          local.get 1
          i32.load offset=8
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 3
        i32.const 12
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 0
      local.get 7
      i64.store align=4
      i32.const 1
      local.set 5
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $_ZN4core3fmt5Write10write_char17h3c67b25078b609dcE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 3
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=13
          local.get 2
          local.get 4
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 5
        local.get 4
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 4
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.store8 offset=14
          local.get 2
          local.get 4
          i32.store8 offset=13
          local.get 2
          local.get 5
          i32.const 224
          i32.or
          i32.store8 offset=12
          i32.const 3
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.store8 offset=15
        local.get 2
        local.get 4
        i32.store8 offset=14
        local.get 2
        local.get 5
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8 offset=12
        i32.const 4
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.store8 offset=12
      i32.const 1
      local.set 1
    end
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 1
      i32.const 1
      i32.const 1
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
      local.get 0
      i32.load offset=8
      local.set 3
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h637b66ce416ba494E (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.load
                      local.tee 1
                      i32.load offset=16
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const -1
                      i32.store offset=16
                      local.get 4
                      i32.const 8
                      i32.add
                      i32.const 10
                      local.get 2
                      local.get 3
                      call $_ZN4core5slice6memchr7memrchr17h255195ffdf0ecbabE
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.load offset=8
                          i32.const 1
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 4
                          i32.load offset=12
                          i32.const 1
                          i32.add
                          local.tee 5
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 4
                          i32.const 0
                          i32.store offset=32
                          local.get 4
                          i32.const 1
                          i32.store offset=20
                          local.get 4
                          i32.const 1056520
                          i32.store offset=16
                          local.get 4
                          i64.const 4
                          i64.store offset=24 align=4
                          local.get 4
                          i32.const 16
                          i32.add
                          i32.const 1058960
                          call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
                          unreachable
                        end
                        block  ;; label = @11
                          local.get 1
                          i32.load offset=28
                          local.tee 6
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 6
                          br 8 (;@3;)
                        end
                        local.get 1
                        i32.load offset=24
                        local.tee 7
                        local.get 6
                        i32.add
                        i32.const -1
                        i32.add
                        i32.load8_u
                        i32.const 10
                        i32.ne
                        br_if 7 (;@3;)
                        i32.const 0
                        local.set 8
                        loop  ;; label = @11
                          local.get 4
                          local.get 6
                          local.get 8
                          i32.sub
                          local.tee 9
                          i32.store offset=44
                          local.get 4
                          local.get 7
                          local.get 8
                          i32.add
                          local.tee 10
                          i32.store offset=40
                          local.get 4
                          i32.const 16
                          i32.add
                          i32.const 1
                          local.get 4
                          i32.const 40
                          i32.add
                          i32.const 1
                          call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load16_u offset=16
                                    i32.const 1
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 9
                                    local.set 11
                                    local.get 4
                                    i32.load16_u offset=18
                                    local.tee 5
                                    i32.const 8
                                    i32.eq
                                    br_if 1 (;@15;)
                                    local.get 1
                                    i32.const 0
                                    i32.store8 offset=32
                                    local.get 5
                                    i32.const 27
                                    i32.eq
                                    br_if 4 (;@12;)
                                    local.get 5
                                    i64.extend_i32_u
                                    i64.const 32
                                    i64.shl
                                    local.set 12
                                    br 2 (;@14;)
                                  end
                                  local.get 4
                                  i32.load offset=20
                                  local.set 11
                                end
                                local.get 1
                                i32.const 0
                                i32.store8 offset=32
                                local.get 11
                                br_if 1 (;@13;)
                                i32.const 1056736
                                i64.extend_i32_u
                                i64.const 32
                                i64.shl
                                i64.const 2
                                i64.or
                                local.set 12
                              end
                              block  ;; label = @14
                                local.get 8
                                i32.eqz
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  local.get 9
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 7
                                  local.get 10
                                  local.get 9
                                  memory.copy
                                end
                                local.get 1
                                local.get 9
                                i32.store offset=28
                              end
                              local.get 12
                              i64.const 255
                              i64.and
                              i64.const 4
                              i64.ne
                              br_if 5 (;@8;)
                              local.get 1
                              i32.load offset=28
                              local.set 6
                              br 10 (;@3;)
                            end
                            local.get 11
                            local.get 8
                            i32.add
                            local.set 8
                          end
                          local.get 8
                          local.get 6
                          i32.ge_u
                          br_if 7 (;@4;)
                          br 0 (;@11;)
                        end
                      end
                      block  ;; label = @10
                        local.get 1
                        i32.load offset=28
                        local.tee 8
                        br_if 0 (;@10;)
                        local.get 5
                        i32.eqz
                        br_if 5 (;@5;)
                        local.get 2
                        local.set 6
                        local.get 5
                        local.set 8
                        loop  ;; label = @11
                          local.get 4
                          local.get 8
                          i32.store offset=44
                          local.get 4
                          local.get 6
                          i32.store offset=40
                          local.get 4
                          i32.const 16
                          i32.add
                          i32.const 1
                          local.get 4
                          i32.const 40
                          i32.add
                          i32.const 1
                          call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load16_u offset=16
                                  i32.const 1
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i64.load16_u offset=18
                                  local.tee 12
                                  i64.const 27
                                  i64.eq
                                  br_if 3 (;@12;)
                                  local.get 12
                                  i64.const 32
                                  i64.shl
                                  local.set 12
                                  br 1 (;@14;)
                                end
                                local.get 4
                                i32.load offset=20
                                local.tee 11
                                br_if 1 (;@13;)
                                i32.const 0
                                i64.load offset=1056368
                                local.set 12
                              end
                              local.get 12
                              i64.const 255
                              i64.and
                              i64.const 4
                              i64.eq
                              br_if 8 (;@5;)
                              local.get 12
                              i64.const -4294967041
                              i64.and
                              i64.const 34359738368
                              i64.eq
                              br_if 8 (;@5;)
                              local.get 0
                              local.get 12
                              i64.store align=4
                              br 11 (;@2;)
                            end
                            local.get 8
                            local.get 11
                            i32.lt_u
                            br_if 5 (;@7;)
                            local.get 6
                            local.get 11
                            i32.add
                            local.set 6
                            local.get 8
                            local.get 11
                            i32.sub
                            local.set 8
                          end
                          local.get 8
                          br_if 0 (;@11;)
                          br 6 (;@5;)
                        end
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 5
                            local.get 1
                            i32.load offset=20
                            local.get 8
                            i32.sub
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 4
                            i32.const 16
                            i32.add
                            local.get 1
                            i32.const 20
                            i32.add
                            local.get 2
                            local.get 5
                            call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h4774db78eb753c8fE
                            local.get 4
                            i32.load8_u offset=16
                            i32.const 4
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 0
                            local.get 4
                            i64.load offset=16
                            i64.store align=4
                            br 10 (;@2;)
                          end
                          block  ;; label = @12
                            local.get 5
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 1
                            i32.load offset=24
                            local.get 8
                            i32.add
                            local.get 2
                            local.get 5
                            memory.copy
                          end
                          local.get 1
                          local.get 8
                          local.get 5
                          i32.add
                          local.tee 11
                          i32.store offset=28
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.load offset=28
                        local.set 11
                      end
                      local.get 11
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 1
                      i32.load offset=24
                      local.set 7
                      i32.const 0
                      local.set 8
                      loop  ;; label = @10
                        local.get 4
                        local.get 11
                        local.get 8
                        i32.sub
                        local.tee 9
                        i32.store offset=44
                        local.get 4
                        local.get 7
                        local.get 8
                        i32.add
                        local.tee 10
                        i32.store offset=40
                        local.get 4
                        i32.const 16
                        i32.add
                        i32.const 1
                        local.get 4
                        i32.const 40
                        i32.add
                        i32.const 1
                        call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load16_u offset=16
                                  i32.const 1
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 9
                                  local.set 6
                                  local.get 4
                                  i32.load16_u offset=18
                                  local.tee 13
                                  i32.const 8
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 1
                                  i32.const 0
                                  i32.store8 offset=32
                                  local.get 13
                                  i32.const 27
                                  i32.eq
                                  br_if 4 (;@11;)
                                  local.get 13
                                  i64.extend_i32_u
                                  i64.const 32
                                  i64.shl
                                  local.set 12
                                  br 2 (;@13;)
                                end
                                local.get 4
                                i32.load offset=20
                                local.set 6
                              end
                              local.get 1
                              i32.const 0
                              i32.store8 offset=32
                              local.get 6
                              br_if 1 (;@12;)
                              i32.const 1056736
                              i64.extend_i32_u
                              i64.const 32
                              i64.shl
                              i64.const 2
                              i64.or
                              local.set 12
                            end
                            block  ;; label = @13
                              local.get 8
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 9
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                local.get 10
                                local.get 9
                                memory.copy
                              end
                              local.get 1
                              local.get 9
                              i32.store offset=28
                            end
                            local.get 12
                            i64.const 255
                            i64.and
                            i64.const 4
                            i64.eq
                            br_if 7 (;@5;)
                            local.get 0
                            local.get 12
                            i64.store align=4
                            br 10 (;@2;)
                          end
                          local.get 6
                          local.get 8
                          i32.add
                          local.set 8
                        end
                        local.get 8
                        local.get 11
                        i32.ge_u
                        br_if 4 (;@6;)
                        br 0 (;@10;)
                      end
                    end
                    i32.const 1058284
                    call $_ZN4core4cell22panic_already_borrowed17h9e16ee2a0e05415dE
                    unreachable
                  end
                  local.get 0
                  local.get 12
                  i64.store align=4
                  br 5 (;@2;)
                end
                local.get 11
                local.get 8
                local.get 8
                i32.const 1056376
                call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
                unreachable
              end
              block  ;; label = @6
                local.get 8
                local.get 11
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.const 0
                i32.store offset=28
                br 1 (;@5;)
              end
              i32.const 0
              local.get 8
              local.get 11
              i32.const 1058220
              call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
              unreachable
            end
            local.get 2
            local.get 5
            i32.add
            local.set 11
            block  ;; label = @5
              local.get 3
              local.get 5
              i32.sub
              local.tee 8
              local.get 1
              i32.load offset=20
              local.get 1
              i32.load offset=28
              local.tee 6
              i32.sub
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              i32.const 20
              i32.add
              local.get 11
              local.get 8
              call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h4774db78eb753c8fE
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=24
              local.get 6
              i32.add
              local.get 11
              local.get 8
              memory.copy
            end
            local.get 0
            i32.const 4
            i32.store8
            local.get 1
            local.get 6
            local.get 8
            i32.add
            i32.store offset=28
            br 2 (;@2;)
          end
          local.get 8
          local.get 6
          i32.gt_u
          br_if 2 (;@1;)
          i32.const 0
          local.set 6
          local.get 1
          i32.const 0
          i32.store offset=28
        end
        block  ;; label = @3
          local.get 3
          local.get 1
          i32.load offset=20
          local.get 6
          i32.sub
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 20
          i32.add
          local.get 2
          local.get 3
          call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h4774db78eb753c8fE
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load offset=24
          local.get 6
          i32.add
          local.get 2
          local.get 3
          memory.copy
        end
        local.get 0
        i32.const 4
        i32.store8
        local.get 1
        local.get 6
        local.get 3
        i32.add
        i32.store offset=28
      end
      local.get 1
      local.get 1
      i32.load offset=16
      i32.const 1
      i32.add
      i32.store offset=16
      local.get 4
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 0
    local.get 8
    local.get 6
    i32.const 1058220
    call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
    unreachable)
  (func $_ZN4core3fmt5Write9write_fmt17h1f5d5519ca8dfac5E (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    i32.const 1056304
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h73319cf8ac237dc9E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17h48b7ae066fc63656E (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    i32.const 1056280
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h73319cf8ac237dc9E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17h55f123ca8dbbb128E (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    i32.const 1057888
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h73319cf8ac237dc9E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17h62bf10f0602d58a9E (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 0
    i32.const 1056256
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h73319cf8ac237dc9E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3ptr119drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$GT$$GT$17h14e9ec2f48228ea8E (type 0) (param i32)
    (local i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 0
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        call_indirect (type 0)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        local.get 0
        i32.load offset=8
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 1
      i32.const 12
      i32.const 4
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end)
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcaa6a12e3d08de7dE (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end)
  (func $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf4c13f087aa345e4E (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end)
  (func $_ZN4core3ptr71drop_in_place$LT$std..panicking..panic_handler..FormatStringPayload$GT$17h2fc6fde85bb538c2E (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const -2147483648
      i32.or
      i32.const -2147483648
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
    end)
  (func $_ZN4core5panic12PanicPayload6as_str17h143a9b530a7d5cdfE (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h601921e977955d9bE (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                local.tee 6
                local.get 1
                i32.load offset=12
                local.tee 7
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 5
                i32.ge_u
                br_if 1 (;@5;)
              end
              local.get 1
              i32.load
              local.set 8
              block  ;; label = @6
                local.get 6
                local.get 7
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=16
                local.set 6
                local.get 4
                local.get 5
                i32.store offset=4
                local.get 4
                local.get 8
                i32.store
                i32.const 0
                local.set 7
                local.get 4
                i32.const 8
                i32.add
                i32.const 0
                local.get 4
                i32.const 1
                call $_ZN4wasi13lib_generated7fd_read17h7f62b48900a1cf2cE
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i32.load16_u offset=8
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load offset=12
                    local.tee 7
                    local.get 6
                    local.get 7
                    local.get 6
                    i32.gt_u
                    select
                    local.set 6
                    br 1 (;@7;)
                  end
                  local.get 4
                  i32.load16_u offset=10
                  local.tee 5
                  i32.const 8
                  i32.ne
                  br_if 5 (;@2;)
                end
                local.get 1
                local.get 6
                i32.store offset=16
                local.get 1
                local.get 7
                i32.store offset=12
                i32.const 0
                local.set 6
              end
              local.get 8
              local.get 6
              i32.add
              local.set 8
              local.get 7
              local.get 6
              i32.sub
              local.tee 5
              local.get 3
              local.get 5
              local.get 3
              i32.lt_u
              select
              local.tee 3
              i32.const 1
              i32.ne
              br_if 1 (;@4;)
              local.get 2
              local.get 8
              i32.load8_u
              i32.store8
              br 2 (;@3;)
            end
            local.get 1
            i64.const 0
            i64.store offset=8 align=4
            local.get 4
            local.get 3
            i32.store offset=4
            local.get 4
            local.get 2
            i32.store
            local.get 4
            i32.const 8
            i32.add
            i32.const 0
            local.get 4
            i32.const 1
            call $_ZN4wasi13lib_generated7fd_read17h7f62b48900a1cf2cE
            block  ;; label = @5
              local.get 4
              i32.load16_u offset=8
              br_if 0 (;@5;)
              local.get 0
              local.get 4
              i64.load32_u offset=12
              i64.const 32
              i64.shl
              i64.const 4
              i64.or
              i64.store align=4
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 4
              i64.load16_u offset=10
              local.tee 9
              i64.const 8
              i64.eq
              br_if 0 (;@5;)
              local.get 0
              local.get 9
              i64.const 32
              i64.shl
              i64.store align=4
              br 4 (;@1;)
            end
            local.get 0
            i32.const 4
            i32.store8
            local.get 0
            i32.const 0
            i32.store offset=4
            br 3 (;@1;)
          end
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 8
          local.get 3
          memory.copy
        end
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        i32.const 4
        i32.store8
        local.get 1
        local.get 7
        local.get 6
        local.get 3
        i32.add
        local.tee 3
        local.get 7
        local.get 3
        i32.lt_u
        select
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 0
      local.get 5
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store
      local.get 1
      i64.const 0
      i64.store offset=8 align=4
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5flush17hc523f5ce6b40368eE (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 3
              i32.load offset=16
              br_if 0 (;@5;)
              local.get 3
              i32.const -1
              i32.store offset=16
              local.get 3
              i32.load offset=28
              local.tee 4
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              i32.load offset=24
              local.set 5
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 2
                local.get 4
                local.get 1
                i32.sub
                local.tee 6
                i32.store offset=4
                local.get 2
                local.get 5
                local.get 1
                i32.add
                local.tee 7
                i32.store
                local.get 2
                i32.const 8
                i32.add
                i32.const 1
                local.get 2
                i32.const 1
                call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          i32.load16_u offset=8
                          i32.const 1
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 6
                          local.set 8
                          local.get 2
                          i32.load16_u offset=10
                          local.tee 9
                          i32.const 8
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 3
                          i32.const 0
                          i32.store8 offset=32
                          local.get 9
                          i32.const 27
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 9
                          i64.extend_i32_u
                          i64.const 32
                          i64.shl
                          local.set 10
                          br 2 (;@9;)
                        end
                        local.get 2
                        i32.load offset=12
                        local.set 8
                      end
                      local.get 3
                      i32.const 0
                      i32.store8 offset=32
                      local.get 8
                      br_if 1 (;@8;)
                      i32.const 1056736
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      i64.const 2
                      i64.or
                      local.set 10
                    end
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 6
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 7
                        local.get 6
                        memory.copy
                      end
                      local.get 3
                      local.get 6
                      i32.store offset=28
                    end
                    local.get 10
                    i64.const 255
                    i64.and
                    i64.const 4
                    i64.eq
                    br_if 5 (;@3;)
                    br 6 (;@2;)
                  end
                  local.get 8
                  local.get 1
                  i32.add
                  local.set 1
                end
                local.get 1
                local.get 4
                i32.ge_u
                br_if 2 (;@4;)
                br 0 (;@6;)
              end
            end
            i32.const 1058268
            call $_ZN4core4cell22panic_already_borrowed17h9e16ee2a0e05415dE
            unreachable
          end
          local.get 1
          local.get 4
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          i32.const 0
          i32.store offset=28
        end
        i64.const 4
        local.set 10
      end
      local.get 0
      local.get 10
      i64.store align=4
      local.get 3
      local.get 3
      i32.load offset=16
      i32.const 1
      i32.add
      i32.store offset=16
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 0
    local.get 1
    local.get 4
    i32.const 1058220
    call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
    unreachable)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h4f384db9801ee177E (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b77ddee99a382a4E)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hbbbfcf3fb6c78f9aE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    local.get 2
    local.set 4
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      i32.const 1
      i32.const 1
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
      local.get 0
      i32.load offset=8
      local.set 4
    end
    local.get 0
    i32.load offset=4
    local.get 4
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 5
        local.get 1
        i32.const 6
        i32.shr_u
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=1
          local.get 4
          local.get 6
          i32.const 192
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 1
        i32.const 12
        i32.shr_u
        local.set 7
        local.get 6
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        local.set 6
        block  ;; label = @3
          local.get 1
          i32.const 65535
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.store8 offset=2
          local.get 4
          local.get 6
          i32.store8 offset=1
          local.get 4
          local.get 7
          i32.const 224
          i32.or
          i32.store8
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        i32.store8 offset=3
        local.get 4
        local.get 6
        i32.store8 offset=2
        local.get 4
        local.get 7
        i32.const 63
        i32.and
        i32.const -128
        i32.or
        i32.store8 offset=1
        local.get 4
        local.get 1
        i32.const 18
        i32.shr_u
        i32.const -16
        i32.or
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17ha671a31606185aafE (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      i32.const 1
      i32.const 1
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
      local.get 0
      i32.load offset=8
      local.set 3
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he2e8b2654aa3d23fE (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN3std2io5error82_$LT$impl$u20$core..fmt..Debug$u20$for$u20$std..io..error..repr_unpacked..Repr$GT$3fmt17hcbd7ce33b5d679c8E)
  (func $_ZN59_$LT$std..io..stdio..StdinLock$u20$as$u20$std..io..Read$GT$4read17h23438439ae10b140E (type 6) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load
    i32.const 4
    i32.add
    local.get 2
    local.get 3
    call $_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h601921e977955d9bE)
  (func $_ZN62_$LT$std..io..error..ErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he6a9614b837cb9d1E (type 7) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load8_u
    i32.const 2
    i32.shl
    local.tee 0
    i32.load offset=1059236
    local.get 0
    i32.load offset=1059068
    call $_ZN4core3fmt9Formatter9write_str17h93e999e5be78c0f5E)
  (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h211db6b31d2f12e4E (type 7) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 1058864
    i32.const 9
    i32.const 1058873
    i32.const 11
    local.get 0
    i32.const 1058832
    i32.const 1058884
    i32.const 9
    local.get 2
    i32.const 12
    i32.add
    i32.const 1058848
    call $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h1c1b4b20db9bf964E
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h63fced6cff031482E (type 6) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    i32.const 2
    local.get 2
    local.get 3
    call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load16_u offset=8
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i64.load16_u offset=10
        i64.const 32
        i64.shl
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      i32.load offset=12
      i32.store offset=4
      local.get 0
      i32.const 4
      i32.store8
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hd3cf79b67b8fac76E (type 3) (param i32) (result i32)
    i32.const 1)
  (func $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$5flush17h72999151f5dd4227E (type 2) (param i32 i32)
    local.get 0
    i32.const 4
    i32.store8)
  (func $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$5write17hf056180a68549c01E (type 6) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=4
    local.get 4
    local.get 2
    i32.store
    local.get 4
    i32.const 8
    i32.add
    i32.const 2
    local.get 4
    i32.const 1
    call $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load16_u offset=8
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i64.load16_u offset=10
        i64.const 32
        i64.shl
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 4
      i32.load offset=12
      i32.store offset=4
      local.get 0
      i32.const 4
      i32.store8
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0ef004a031a1fc93E (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      i32.const 1
      i32.const 1
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha7f2642b375d8dd8E
      local.get 0
      i32.load offset=8
      local.set 3
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h4cd8834ea5264c9eE (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i64)
    i32.const 0
    local.set 3
    block  ;; label = @1
      i32.const 0
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.load offset=4
      local.tee 5
      local.get 4
      i64.load offset=8
      local.tee 6
      i64.const 4294967295
      local.get 6
      i64.const 4294967295
      i64.lt_u
      select
      i32.wrap_i64
      i32.sub
      local.tee 7
      local.get 7
      local.get 5
      i32.gt_u
      select
      local.tee 7
      local.get 2
      local.get 7
      local.get 2
      i32.lt_u
      select
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.get 6
      local.get 5
      i64.extend_i32_u
      local.tee 9
      local.get 6
      local.get 9
      i64.lt_u
      select
      i32.wrap_i64
      i32.add
      local.get 1
      local.get 8
      memory.copy
    end
    local.get 4
    local.get 6
    local.get 8
    i64.extend_i32_u
    i64.add
    i64.store offset=8
    block  ;; label = @1
      local.get 7
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      i32.const 0
      i64.load offset=1056368
      local.tee 6
      i64.const 255
      i64.and
      i64.const 4
      i64.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 2
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 4
        i32.load
        local.set 7
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.add
          i32.load
          local.tee 2
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          call_indirect (type 0)
        end
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 3
          local.get 2
          i32.load offset=8
          call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
      end
      local.get 0
      local.get 6
      i64.store align=4
      i32.const 1
      local.set 3
    end
    local.get 3)
  (func $_ZN86_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..fmt..Display$GT$3fmt17h9a3b89e5402ac945E (type 7) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter9write_str17h93e999e5be78c0f5E)
  (func $_ZN89_$LT$std..panicking..panic_handler..FormatStringPayload$u20$as$u20$core..fmt..Display$GT$3fmt17hebb68764beae81f0E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        i32.const -2147483648
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load offset=8
        call $_ZN4core3fmt9Formatter9write_str17h93e999e5be78c0f5E
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 1
      i32.load
      local.set 1
      local.get 0
      i32.load offset=12
      i32.load
      local.tee 0
      i64.load align=4
      local.set 4
      local.get 0
      i64.load offset=8 align=4
      local.set 5
      local.get 2
      local.get 0
      i64.load offset=16 align=4
      i64.store offset=24 align=4
      local.get 2
      local.get 5
      i64.store offset=16 align=4
      local.get 2
      local.get 4
      i64.store offset=8 align=4
      local.get 1
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h73319cf8ac237dc9E
      local.set 0
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN93_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h3ec86653ed680624E (type 2) (param i32 i32)
    local.get 0
    i32.const 1058928
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN93_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$6as_str17h6ea2cefdbc0cf72fE (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func $_ZN93_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17h21862e7720ef2883E (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
    block  ;; label = @1
      i32.const 8
      i32.const 4
      call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 8
      call $_ZN5alloc5alloc18handle_alloc_error17h89655e17149f92f4E
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1058928
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN96_$LT$std..panicking..panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17hc03ba47a0158faeeE (type 2) (param i32 i32)
    (local i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 12
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=12 align=4
      local.get 3
      i32.load
      local.tee 3
      i64.load align=4
      local.set 5
      local.get 3
      i64.load offset=8 align=4
      local.set 6
      local.get 2
      local.get 3
      i64.load offset=16 align=4
      i64.store offset=40 align=4
      local.get 2
      local.get 6
      i64.store offset=32 align=4
      local.get 2
      local.get 5
      i64.store offset=24 align=4
      local.get 2
      i32.const 12
      i32.add
      i32.const 1057888
      local.get 2
      i32.const 24
      i32.add
      call $_ZN4core3fmt5write17h73319cf8ac237dc9E
      drop
      local.get 2
      i32.const 8
      i32.add
      local.get 4
      i32.load
      local.tee 3
      i32.store
      local.get 2
      local.get 2
      i64.load offset=12 align=4
      local.tee 5
      i64.store
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i64.store align=4
    end
    local.get 0
    i32.const 1058976
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN96_$LT$std..panicking..panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17h8def30111e92354eE (type 2) (param i32 i32)
    (local i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 28
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=28 align=4
      local.get 3
      i32.load
      local.tee 3
      i64.load align=4
      local.set 5
      local.get 3
      i64.load offset=8 align=4
      local.set 6
      local.get 2
      local.get 3
      i64.load offset=16 align=4
      i64.store offset=56 align=4
      local.get 2
      local.get 6
      i64.store offset=48 align=4
      local.get 2
      local.get 5
      i64.store offset=40 align=4
      local.get 2
      i32.const 28
      i32.add
      i32.const 1057888
      local.get 2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h73319cf8ac237dc9E
      drop
      local.get 2
      i32.const 16
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.load
      local.tee 3
      i32.store
      local.get 2
      local.get 2
      i64.load offset=28 align=4
      local.tee 5
      i64.store offset=16
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i64.store align=4
    end
    local.get 1
    i64.load align=4
    local.set 5
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    i32.const 8
    i32.add
    local.tee 3
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    i32.store
    local.get 1
    i32.const 0
    i32.store
    local.get 2
    local.get 5
    i64.store
    call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 12
      call $_ZN5alloc5alloc18handle_alloc_error17h89655e17149f92f4E
      unreachable
    end
    local.get 1
    local.get 2
    i64.load
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.load
    i32.store
    local.get 0
    i32.const 1058976
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4wasi13lib_generated7fd_read17h7f62b48900a1cf2cE (type 6) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        i32.const 12
        i32.add
        call $_ZN4wasi13lib_generated22wasi_snapshot_preview17fd_read17h6692592c035dbcd7E
        local.tee 3
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=12
        i32.store offset=4
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store16 offset=2
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store16
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4wasi13lib_generated8fd_write17hdf837a93abbfe040E (type 6) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        i32.const 12
        i32.add
        call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17h0186234eb6f97ea4E
        local.tee 3
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=12
        i32.store offset=4
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store16 offset=2
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store16
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $malloc (type 3) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1065080
                              local.tee 2
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1065528
                                local.tee 3
                                br_if 0 (;@14;)
                                i32.const 0
                                i64.const -1
                                i64.store offset=1065540 align=4
                                i32.const 0
                                i64.const 281474976776192
                                i64.store offset=1065532 align=4
                                i32.const 0
                                local.get 1
                                i32.const 8
                                i32.add
                                i32.const -16
                                i32.and
                                i32.const 1431655768
                                i32.xor
                                local.tee 3
                                i32.store offset=1065528
                                i32.const 0
                                i32.const 0
                                i32.store offset=1065548
                                i32.const 0
                                i32.const 0
                                i32.store offset=1065500
                              end
                              i32.const 1114112
                              i32.const 1065600
                              i32.lt_u
                              br_if 1 (;@12;)
                              i32.const 0
                              local.set 2
                              i32.const 1114112
                              i32.const 1065600
                              i32.sub
                              i32.const 89
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 4
                              i32.const 0
                              i32.const 1065600
                              i32.store offset=1065504
                              i32.const 0
                              i32.const 1065600
                              i32.store offset=1065072
                              i32.const 0
                              local.get 3
                              i32.store offset=1065092
                              i32.const 0
                              i32.const -1
                              i32.store offset=1065088
                              i32.const 0
                              i32.const 1114112
                              i32.const 1065600
                              i32.sub
                              local.tee 3
                              i32.store offset=1065508
                              i32.const 0
                              local.get 3
                              i32.store offset=1065492
                              i32.const 0
                              local.get 3
                              i32.store offset=1065488
                              loop  ;; label = @14
                                local.get 4
                                i32.const 1065116
                                i32.add
                                local.get 4
                                i32.const 1065104
                                i32.add
                                local.tee 3
                                i32.store
                                local.get 3
                                local.get 4
                                i32.const 1065096
                                i32.add
                                local.tee 5
                                i32.store
                                local.get 4
                                i32.const 1065108
                                i32.add
                                local.get 5
                                i32.store
                                local.get 4
                                i32.const 1065124
                                i32.add
                                local.get 4
                                i32.const 1065112
                                i32.add
                                local.tee 5
                                i32.store
                                local.get 5
                                local.get 3
                                i32.store
                                local.get 4
                                i32.const 1065132
                                i32.add
                                local.get 4
                                i32.const 1065120
                                i32.add
                                local.tee 3
                                i32.store
                                local.get 3
                                local.get 5
                                i32.store
                                local.get 4
                                i32.const 1065128
                                i32.add
                                local.get 3
                                i32.store
                                local.get 4
                                i32.const 32
                                i32.add
                                local.tee 4
                                i32.const 256
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              i32.const 1114112
                              i32.const -52
                              i32.add
                              i32.const 56
                              i32.store
                              i32.const 0
                              i32.const 0
                              i32.load offset=1065544
                              i32.store offset=1065084
                              i32.const 0
                              i32.const 1065600
                              i32.const -8
                              i32.const 1065600
                              i32.sub
                              i32.const 15
                              i32.and
                              local.tee 4
                              i32.add
                              local.tee 2
                              i32.store offset=1065080
                              i32.const 0
                              i32.const 1114112
                              i32.const 1065600
                              i32.sub
                              local.get 4
                              i32.sub
                              i32.const -56
                              i32.add
                              local.tee 4
                              i32.store offset=1065068
                              local.get 2
                              local.get 4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const 236
                                i32.gt_u
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1065056
                                  local.tee 6
                                  i32.const 16
                                  local.get 0
                                  i32.const 19
                                  i32.add
                                  i32.const 496
                                  i32.and
                                  local.get 0
                                  i32.const 11
                                  i32.lt_u
                                  select
                                  local.tee 5
                                  i32.const 3
                                  i32.shr_u
                                  local.tee 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 3
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      i32.const 1
                                      i32.and
                                      local.get 3
                                      i32.or
                                      i32.const 1
                                      i32.xor
                                      local.tee 5
                                      i32.const 3
                                      i32.shl
                                      local.tee 3
                                      i32.const 1065096
                                      i32.add
                                      local.tee 4
                                      local.get 3
                                      i32.const 1065104
                                      i32.add
                                      i32.load
                                      local.tee 3
                                      i32.load offset=8
                                      local.tee 0
                                      i32.ne
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.get 6
                                      i32.const -2
                                      local.get 5
                                      i32.rotl
                                      i32.and
                                      i32.store offset=1065056
                                      br 1 (;@16;)
                                    end
                                    local.get 4
                                    local.get 0
                                    i32.store offset=8
                                    local.get 0
                                    local.get 4
                                    i32.store offset=12
                                  end
                                  local.get 3
                                  i32.const 8
                                  i32.add
                                  local.set 4
                                  local.get 3
                                  local.get 5
                                  i32.const 3
                                  i32.shl
                                  local.tee 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 3
                                  local.get 5
                                  i32.add
                                  local.tee 3
                                  local.get 3
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  br 14 (;@1;)
                                end
                                local.get 5
                                i32.const 0
                                i32.load offset=1065064
                                local.tee 7
                                i32.le_u
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  local.get 4
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      local.get 3
                                      i32.shl
                                      i32.const 2
                                      local.get 3
                                      i32.shl
                                      local.tee 4
                                      i32.const 0
                                      local.get 4
                                      i32.sub
                                      i32.or
                                      i32.and
                                      i32.ctz
                                      local.tee 3
                                      i32.const 3
                                      i32.shl
                                      local.tee 4
                                      i32.const 1065096
                                      i32.add
                                      local.tee 0
                                      local.get 4
                                      i32.const 1065104
                                      i32.add
                                      i32.load
                                      local.tee 4
                                      i32.load offset=8
                                      local.tee 8
                                      i32.ne
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.get 6
                                      i32.const -2
                                      local.get 3
                                      i32.rotl
                                      i32.and
                                      local.tee 6
                                      i32.store offset=1065056
                                      br 1 (;@16;)
                                    end
                                    local.get 0
                                    local.get 8
                                    i32.store offset=8
                                    local.get 8
                                    local.get 0
                                    i32.store offset=12
                                  end
                                  local.get 4
                                  local.get 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 4
                                  local.get 3
                                  i32.const 3
                                  i32.shl
                                  local.tee 3
                                  i32.add
                                  local.get 3
                                  local.get 5
                                  i32.sub
                                  local.tee 0
                                  i32.store
                                  local.get 4
                                  local.get 5
                                  i32.add
                                  local.tee 8
                                  local.get 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  block  ;; label = @16
                                    local.get 7
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 7
                                    i32.const -8
                                    i32.and
                                    i32.const 1065096
                                    i32.add
                                    local.set 5
                                    i32.const 0
                                    i32.load offset=1065076
                                    local.set 3
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 6
                                        i32.const 1
                                        local.get 7
                                        i32.const 3
                                        i32.shr_u
                                        i32.shl
                                        local.tee 9
                                        i32.and
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.get 6
                                        local.get 9
                                        i32.or
                                        i32.store offset=1065056
                                        local.get 5
                                        local.set 9
                                        br 1 (;@17;)
                                      end
                                      local.get 5
                                      i32.load offset=8
                                      local.set 9
                                    end
                                    local.get 9
                                    local.get 3
                                    i32.store offset=12
                                    local.get 5
                                    local.get 3
                                    i32.store offset=8
                                    local.get 3
                                    local.get 5
                                    i32.store offset=12
                                    local.get 3
                                    local.get 9
                                    i32.store offset=8
                                  end
                                  local.get 4
                                  i32.const 8
                                  i32.add
                                  local.set 4
                                  i32.const 0
                                  local.get 8
                                  i32.store offset=1065076
                                  i32.const 0
                                  local.get 0
                                  i32.store offset=1065064
                                  br 14 (;@1;)
                                end
                                i32.const 0
                                i32.load offset=1065060
                                local.tee 10
                                i32.eqz
                                br_if 1 (;@13;)
                                local.get 10
                                i32.ctz
                                i32.const 2
                                i32.shl
                                i32.const 1065360
                                i32.add
                                i32.load
                                local.tee 8
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 5
                                i32.sub
                                local.set 3
                                local.get 8
                                local.set 0
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load offset=16
                                      local.tee 4
                                      br_if 0 (;@17;)
                                      local.get 0
                                      i32.load offset=20
                                      local.tee 4
                                      i32.eqz
                                      br_if 2 (;@15;)
                                    end
                                    local.get 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 5
                                    i32.sub
                                    local.tee 0
                                    local.get 3
                                    local.get 0
                                    local.get 3
                                    i32.lt_u
                                    local.tee 0
                                    select
                                    local.set 3
                                    local.get 4
                                    local.get 8
                                    local.get 0
                                    select
                                    local.set 8
                                    local.get 4
                                    local.set 0
                                    br 0 (;@16;)
                                  end
                                end
                                local.get 8
                                i32.load offset=24
                                local.set 2
                                block  ;; label = @15
                                  local.get 8
                                  i32.load offset=12
                                  local.tee 4
                                  local.get 8
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 8
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 4
                                  i32.store offset=12
                                  local.get 4
                                  local.get 0
                                  i32.store offset=8
                                  br 13 (;@2;)
                                end
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 8
                                    i32.load offset=20
                                    local.tee 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 8
                                    i32.const 20
                                    i32.add
                                    local.set 9
                                    br 1 (;@15;)
                                  end
                                  local.get 8
                                  i32.load offset=16
                                  local.tee 0
                                  i32.eqz
                                  br_if 4 (;@11;)
                                  local.get 8
                                  i32.const 16
                                  i32.add
                                  local.set 9
                                end
                                loop  ;; label = @15
                                  local.get 9
                                  local.set 11
                                  local.get 0
                                  local.tee 4
                                  i32.const 20
                                  i32.add
                                  local.set 9
                                  local.get 4
                                  i32.load offset=20
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i32.const 16
                                  i32.add
                                  local.set 9
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                                local.get 11
                                i32.const 0
                                i32.store
                                br 12 (;@2;)
                              end
                              i32.const -1
                              local.set 5
                              local.get 0
                              i32.const -65
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 19
                              i32.add
                              local.tee 4
                              i32.const -16
                              i32.and
                              local.set 5
                              i32.const 0
                              i32.load offset=1065060
                              local.tee 10
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 31
                              local.set 7
                              block  ;; label = @14
                                local.get 0
                                i32.const 16777196
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 5
                                i32.const 38
                                local.get 4
                                i32.const 8
                                i32.shr_u
                                i32.clz
                                local.tee 4
                                i32.sub
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.get 4
                                i32.const 1
                                i32.shl
                                i32.sub
                                i32.const 62
                                i32.add
                                local.set 7
                              end
                              i32.const 0
                              local.get 5
                              i32.sub
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 7
                                      i32.const 2
                                      i32.shl
                                      i32.const 1065360
                                      i32.add
                                      i32.load
                                      local.tee 0
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 4
                                      i32.const 0
                                      local.set 9
                                      br 1 (;@16;)
                                    end
                                    i32.const 0
                                    local.set 4
                                    local.get 5
                                    i32.const 0
                                    i32.const 25
                                    local.get 7
                                    i32.const 1
                                    i32.shr_u
                                    i32.sub
                                    local.get 7
                                    i32.const 31
                                    i32.eq
                                    select
                                    i32.shl
                                    local.set 8
                                    i32.const 0
                                    local.set 9
                                    loop  ;; label = @17
                                      block  ;; label = @18
                                        local.get 0
                                        i32.load offset=4
                                        i32.const -8
                                        i32.and
                                        local.get 5
                                        i32.sub
                                        local.tee 6
                                        local.get 3
                                        i32.ge_u
                                        br_if 0 (;@18;)
                                        local.get 6
                                        local.set 3
                                        local.get 0
                                        local.set 9
                                        local.get 6
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 3
                                        local.get 0
                                        local.set 9
                                        local.get 0
                                        local.set 4
                                        br 3 (;@15;)
                                      end
                                      local.get 4
                                      local.get 0
                                      i32.load offset=20
                                      local.tee 6
                                      local.get 6
                                      local.get 0
                                      local.get 8
                                      i32.const 29
                                      i32.shr_u
                                      i32.const 4
                                      i32.and
                                      i32.add
                                      i32.load offset=16
                                      local.tee 11
                                      i32.eq
                                      select
                                      local.get 4
                                      local.get 6
                                      select
                                      local.set 4
                                      local.get 8
                                      i32.const 1
                                      i32.shl
                                      local.set 8
                                      local.get 11
                                      local.set 0
                                      local.get 11
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  block  ;; label = @16
                                    local.get 4
                                    local.get 9
                                    i32.or
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 9
                                    i32.const 2
                                    local.get 7
                                    i32.shl
                                    local.tee 4
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.or
                                    local.get 10
                                    i32.and
                                    local.tee 4
                                    i32.eqz
                                    br_if 3 (;@13;)
                                    local.get 4
                                    i32.ctz
                                    i32.const 2
                                    i32.shl
                                    i32.const 1065360
                                    i32.add
                                    i32.load
                                    local.set 4
                                  end
                                  local.get 4
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                loop  ;; label = @15
                                  local.get 4
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 5
                                  i32.sub
                                  local.tee 6
                                  local.get 3
                                  i32.lt_u
                                  local.set 8
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=16
                                    local.tee 0
                                    br_if 0 (;@16;)
                                    local.get 4
                                    i32.load offset=20
                                    local.set 0
                                  end
                                  local.get 6
                                  local.get 3
                                  local.get 8
                                  select
                                  local.set 3
                                  local.get 4
                                  local.get 9
                                  local.get 8
                                  select
                                  local.set 9
                                  local.get 0
                                  local.set 4
                                  local.get 0
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 9
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 3
                              i32.const 0
                              i32.load offset=1065064
                              local.get 5
                              i32.sub
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 9
                              i32.load offset=24
                              local.set 11
                              block  ;; label = @14
                                local.get 9
                                i32.load offset=12
                                local.tee 4
                                local.get 9
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 9
                                i32.load offset=8
                                local.tee 0
                                local.get 4
                                i32.store offset=12
                                local.get 4
                                local.get 0
                                i32.store offset=8
                                br 11 (;@3;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 9
                                  i32.load offset=20
                                  local.tee 0
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  i32.const 20
                                  i32.add
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 9
                                i32.load offset=16
                                local.tee 0
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 9
                                i32.const 16
                                i32.add
                                local.set 8
                              end
                              loop  ;; label = @14
                                local.get 8
                                local.set 6
                                local.get 0
                                local.tee 4
                                i32.const 20
                                i32.add
                                local.set 8
                                local.get 4
                                i32.load offset=20
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 4
                                i32.const 16
                                i32.add
                                local.set 8
                                local.get 4
                                i32.load offset=16
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              i32.const 0
                              i32.store
                              br 10 (;@3;)
                            end
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1065064
                              local.tee 4
                              local.get 5
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1065076
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  local.get 5
                                  i32.sub
                                  local.tee 0
                                  i32.const 16
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 3
                                  local.get 5
                                  i32.add
                                  local.tee 8
                                  local.get 0
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 3
                                  local.get 4
                                  i32.add
                                  local.get 0
                                  i32.store
                                  local.get 3
                                  local.get 5
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  br 1 (;@14;)
                                end
                                local.get 3
                                local.get 4
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 4
                                i32.add
                                local.tee 4
                                local.get 4
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.set 8
                                i32.const 0
                                local.set 0
                              end
                              i32.const 0
                              local.get 0
                              i32.store offset=1065064
                              i32.const 0
                              local.get 8
                              i32.store offset=1065076
                              local.get 3
                              i32.const 8
                              i32.add
                              local.set 4
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1065068
                              local.tee 0
                              local.get 5
                              i32.le_u
                              br_if 0 (;@13;)
                              local.get 2
                              local.get 5
                              i32.add
                              local.tee 4
                              local.get 0
                              local.get 5
                              i32.sub
                              local.tee 3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 4
                              i32.store offset=1065080
                              i32.const 0
                              local.get 3
                              i32.store offset=1065068
                              local.get 2
                              local.get 5
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 2
                              i32.const 8
                              i32.add
                              local.set 4
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1065528
                                i32.eqz
                                br_if 0 (;@14;)
                                i32.const 0
                                i32.load offset=1065536
                                local.set 3
                                br 1 (;@13;)
                              end
                              i32.const 0
                              i64.const -1
                              i64.store offset=1065540 align=4
                              i32.const 0
                              i64.const 281474976776192
                              i64.store offset=1065532 align=4
                              i32.const 0
                              local.get 1
                              i32.const 12
                              i32.add
                              i32.const -16
                              i32.and
                              i32.const 1431655768
                              i32.xor
                              i32.store offset=1065528
                              i32.const 0
                              i32.const 0
                              i32.store offset=1065548
                              i32.const 0
                              i32.const 0
                              i32.store offset=1065500
                              i32.const 65536
                              local.set 3
                            end
                            i32.const 0
                            local.set 4
                            block  ;; label = @13
                              local.get 3
                              local.get 5
                              i32.const 71
                              i32.add
                              local.tee 11
                              i32.add
                              local.tee 8
                              i32.const 0
                              local.get 3
                              i32.sub
                              local.tee 6
                              i32.and
                              local.tee 9
                              local.get 5
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 48
                              i32.store offset=1065552
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1065496
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1065488
                                local.tee 3
                                local.get 9
                                i32.add
                                local.tee 7
                                local.get 3
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 7
                                local.get 4
                                i32.le_u
                                br_if 1 (;@13;)
                              end
                              i32.const 0
                              local.set 4
                              i32.const 0
                              i32.const 48
                              i32.store offset=1065552
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load8_u offset=1065500
                            i32.const 4
                            i32.and
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 1065504
                                  local.set 4
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 2
                                      local.get 4
                                      i32.load
                                      local.tee 3
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 2
                                      local.get 3
                                      local.get 4
                                      i32.load offset=4
                                      i32.add
                                      i32.lt_u
                                      br_if 3 (;@14;)
                                    end
                                    local.get 4
                                    i32.load offset=8
                                    local.tee 4
                                    br_if 0 (;@16;)
                                  end
                                end
                                i32.const 0
                                call $sbrk
                                local.tee 8
                                i32.const -1
                                i32.eq
                                br_if 6 (;@8;)
                                local.get 9
                                local.set 6
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1065532
                                  local.tee 4
                                  i32.const -1
                                  i32.add
                                  local.tee 3
                                  local.get 8
                                  i32.and
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  local.get 8
                                  i32.sub
                                  local.get 3
                                  local.get 8
                                  i32.add
                                  i32.const 0
                                  local.get 4
                                  i32.sub
                                  i32.and
                                  i32.add
                                  local.set 6
                                end
                                local.get 6
                                local.get 5
                                i32.le_u
                                br_if 6 (;@8;)
                                local.get 6
                                i32.const 2147483646
                                i32.gt_u
                                br_if 6 (;@8;)
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=1065496
                                  local.tee 4
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  i32.load offset=1065488
                                  local.tee 3
                                  local.get 6
                                  i32.add
                                  local.tee 0
                                  local.get 3
                                  i32.le_u
                                  br_if 7 (;@8;)
                                  local.get 0
                                  local.get 4
                                  i32.gt_u
                                  br_if 7 (;@8;)
                                end
                                local.get 6
                                call $sbrk
                                local.tee 4
                                local.get 8
                                i32.ne
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 8
                              local.get 0
                              i32.sub
                              local.get 6
                              i32.and
                              local.tee 6
                              i32.const 2147483646
                              i32.gt_u
                              br_if 5 (;@8;)
                              local.get 6
                              call $sbrk
                              local.tee 8
                              local.get 4
                              i32.load
                              local.get 4
                              i32.load offset=4
                              i32.add
                              i32.eq
                              br_if 4 (;@9;)
                              local.get 8
                              local.set 4
                            end
                            block  ;; label = @13
                              local.get 6
                              local.get 5
                              i32.const 72
                              i32.add
                              i32.ge_u
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const -1
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 11
                                local.get 6
                                i32.sub
                                i32.const 0
                                i32.load offset=1065536
                                local.tee 3
                                i32.add
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.and
                                local.tee 3
                                i32.const 2147483646
                                i32.le_u
                                br_if 0 (;@14;)
                                local.get 4
                                local.set 8
                                br 8 (;@6;)
                              end
                              block  ;; label = @14
                                local.get 3
                                call $sbrk
                                i32.const -1
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 3
                                local.get 6
                                i32.add
                                local.set 6
                                local.get 4
                                local.set 8
                                br 8 (;@6;)
                              end
                              i32.const 0
                              local.get 6
                              i32.sub
                              call $sbrk
                              drop
                              br 5 (;@8;)
                            end
                            local.get 4
                            local.set 8
                            local.get 4
                            i32.const -1
                            i32.ne
                            br_if 6 (;@6;)
                            br 4 (;@8;)
                          end
                          unreachable
                        end
                        i32.const 0
                        local.set 4
                        br 8 (;@2;)
                      end
                      i32.const 0
                      local.set 4
                      br 6 (;@3;)
                    end
                    local.get 8
                    i32.const -1
                    i32.ne
                    br_if 2 (;@6;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065500
                  i32.const 4
                  i32.or
                  i32.store offset=1065500
                end
                local.get 9
                i32.const 2147483646
                i32.gt_u
                br_if 1 (;@5;)
                local.get 9
                call $sbrk
                local.set 8
                i32.const 0
                call $sbrk
                local.set 4
                local.get 8
                i32.const -1
                i32.eq
                br_if 1 (;@5;)
                local.get 4
                i32.const -1
                i32.eq
                br_if 1 (;@5;)
                local.get 8
                local.get 4
                i32.ge_u
                br_if 1 (;@5;)
                local.get 4
                local.get 8
                i32.sub
                local.tee 6
                local.get 5
                i32.const 56
                i32.add
                i32.le_u
                br_if 1 (;@5;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=1065488
              local.get 6
              i32.add
              local.tee 4
              i32.store offset=1065488
              block  ;; label = @6
                local.get 4
                i32.const 0
                i32.load offset=1065492
                i32.le_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 4
                i32.store offset=1065492
              end
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1065080
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1065504
                      local.set 4
                      loop  ;; label = @10
                        local.get 8
                        local.get 4
                        i32.load
                        local.tee 0
                        local.get 4
                        i32.load offset=4
                        local.tee 9
                        i32.add
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        br_if 0 (;@10;)
                        br 3 (;@7;)
                      end
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1065072
                        local.tee 4
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 8
                        local.get 4
                        i32.ge_u
                        br_if 1 (;@9;)
                      end
                      i32.const 0
                      local.get 8
                      i32.store offset=1065072
                    end
                    i32.const 0
                    local.set 4
                    i32.const 0
                    local.get 6
                    i32.store offset=1065508
                    i32.const 0
                    local.get 8
                    i32.store offset=1065504
                    i32.const 0
                    i32.const -1
                    i32.store offset=1065088
                    i32.const 0
                    i32.const 0
                    i32.load offset=1065528
                    i32.store offset=1065092
                    i32.const 0
                    i32.const 0
                    i32.store offset=1065516
                    loop  ;; label = @9
                      local.get 4
                      i32.const 1065116
                      i32.add
                      local.get 4
                      i32.const 1065104
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 4
                      i32.const 1065096
                      i32.add
                      local.tee 0
                      i32.store
                      local.get 4
                      i32.const 1065108
                      i32.add
                      local.get 0
                      i32.store
                      local.get 4
                      i32.const 1065124
                      i32.add
                      local.get 4
                      i32.const 1065112
                      i32.add
                      local.tee 0
                      i32.store
                      local.get 0
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 1065132
                      i32.add
                      local.get 4
                      i32.const 1065120
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 0
                      i32.store
                      local.get 4
                      i32.const 1065128
                      i32.add
                      local.get 3
                      i32.store
                      local.get 4
                      i32.const 32
                      i32.add
                      local.tee 4
                      i32.const 256
                      i32.ne
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    i32.const -8
                    local.get 8
                    i32.sub
                    i32.const 15
                    i32.and
                    local.tee 4
                    i32.add
                    local.tee 3
                    local.get 6
                    i32.const -56
                    i32.add
                    local.tee 0
                    local.get 4
                    i32.sub
                    local.tee 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1065544
                    i32.store offset=1065084
                    i32.const 0
                    local.get 4
                    i32.store offset=1065068
                    i32.const 0
                    local.get 3
                    i32.store offset=1065080
                    local.get 8
                    local.get 0
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    br 2 (;@6;)
                  end
                  local.get 3
                  local.get 8
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load offset=12
                  i32.const 8
                  i32.and
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const -8
                  local.get 3
                  i32.sub
                  i32.const 15
                  i32.and
                  local.tee 0
                  i32.add
                  local.tee 8
                  i32.const 0
                  i32.load offset=1065068
                  local.get 6
                  i32.add
                  local.tee 11
                  local.get 0
                  i32.sub
                  local.tee 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 4
                  local.get 9
                  local.get 6
                  i32.add
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065544
                  i32.store offset=1065084
                  i32.const 0
                  local.get 0
                  i32.store offset=1065068
                  i32.const 0
                  local.get 8
                  i32.store offset=1065080
                  local.get 3
                  local.get 11
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 8
                  i32.const 0
                  i32.load offset=1065072
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 8
                  i32.store offset=1065072
                end
                local.get 8
                local.get 6
                i32.add
                local.set 0
                i32.const 1065504
                local.set 4
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 4
                      i32.load
                      local.tee 9
                      local.get 0
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 4
                      i32.load offset=8
                      local.tee 4
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 4
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                end
                i32.const 1065504
                local.set 4
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      local.get 4
                      i32.load
                      local.tee 0
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 0
                      local.get 4
                      i32.load offset=4
                      i32.add
                      local.tee 0
                      i32.lt_u
                      br_if 2 (;@7;)
                    end
                    local.get 4
                    i32.load offset=8
                    local.set 4
                    br 0 (;@8;)
                  end
                end
                local.get 8
                i32.const -8
                local.get 8
                i32.sub
                i32.const 15
                i32.and
                local.tee 4
                i32.add
                local.tee 11
                local.get 6
                i32.const -56
                i32.add
                local.tee 9
                local.get 4
                i32.sub
                local.tee 4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 8
                local.get 9
                i32.add
                i32.const 56
                i32.store offset=4
                local.get 3
                local.get 0
                i32.const 55
                local.get 0
                i32.sub
                i32.const 15
                i32.and
                i32.add
                i32.const -63
                i32.add
                local.tee 9
                local.get 9
                local.get 3
                i32.const 16
                i32.add
                i32.lt_u
                select
                local.tee 9
                i32.const 35
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1065544
                i32.store offset=1065084
                i32.const 0
                local.get 4
                i32.store offset=1065068
                i32.const 0
                local.get 11
                i32.store offset=1065080
                local.get 9
                i32.const 16
                i32.add
                i32.const 0
                i64.load offset=1065512 align=4
                i64.store align=4
                local.get 9
                i32.const 0
                i64.load offset=1065504 align=4
                i64.store offset=8 align=4
                i32.const 0
                local.get 9
                i32.const 8
                i32.add
                i32.store offset=1065512
                i32.const 0
                local.get 6
                i32.store offset=1065508
                i32.const 0
                local.get 8
                i32.store offset=1065504
                i32.const 0
                i32.const 0
                i32.store offset=1065516
                local.get 9
                i32.const 36
                i32.add
                local.set 4
                loop  ;; label = @7
                  local.get 4
                  i32.const 7
                  i32.store
                  local.get 4
                  i32.const 4
                  i32.add
                  local.tee 4
                  local.get 0
                  i32.lt_u
                  br_if 0 (;@7;)
                end
                local.get 9
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 9
                local.get 9
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 9
                local.get 9
                local.get 3
                i32.sub
                local.tee 8
                i32.store
                local.get 3
                local.get 8
                i32.const 1
                i32.or
                i32.store offset=4
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const -8
                    i32.and
                    i32.const 1065096
                    i32.add
                    local.set 4
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1065056
                        local.tee 0
                        i32.const 1
                        local.get 8
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 0
                        local.get 8
                        i32.or
                        i32.store offset=1065056
                        local.get 4
                        local.set 0
                        br 1 (;@9;)
                      end
                      local.get 4
                      i32.load offset=8
                      local.set 0
                    end
                    local.get 0
                    local.get 3
                    i32.store offset=12
                    local.get 4
                    local.get 3
                    i32.store offset=8
                    i32.const 12
                    local.set 8
                    i32.const 8
                    local.set 9
                    br 1 (;@7;)
                  end
                  i32.const 31
                  local.set 4
                  block  ;; label = @8
                    local.get 8
                    i32.const 16777215
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 38
                    local.get 8
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 4
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 4
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 4
                  end
                  local.get 3
                  local.get 4
                  i32.store offset=28
                  local.get 3
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 4
                  i32.const 2
                  i32.shl
                  i32.const 1065360
                  i32.add
                  local.set 0
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1065060
                        local.tee 9
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 6
                        i32.and
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 3
                        i32.store
                        i32.const 0
                        local.get 9
                        local.get 6
                        i32.or
                        i32.store offset=1065060
                        local.get 3
                        local.get 0
                        i32.store offset=24
                        br 1 (;@9;)
                      end
                      local.get 8
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 0
                      i32.load
                      local.set 9
                      loop  ;; label = @10
                        local.get 9
                        local.tee 0
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 8
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 9
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 0
                        local.get 9
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 6
                        i32.load offset=16
                        local.tee 9
                        br_if 0 (;@10;)
                      end
                      local.get 6
                      i32.const 16
                      i32.add
                      local.get 3
                      i32.store
                      local.get 3
                      local.get 0
                      i32.store offset=24
                    end
                    i32.const 8
                    local.set 8
                    i32.const 12
                    local.set 9
                    local.get 3
                    local.set 0
                    local.get 3
                    local.set 4
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.set 4
                  local.get 0
                  local.get 3
                  i32.store offset=8
                  local.get 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  i32.const 0
                  local.set 4
                  i32.const 24
                  local.set 8
                  i32.const 12
                  local.set 9
                end
                local.get 3
                local.get 9
                i32.add
                local.get 0
                i32.store
                local.get 3
                local.get 8
                i32.add
                local.get 4
                i32.store
              end
              i32.const 0
              i32.load offset=1065068
              local.tee 4
              local.get 5
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              i32.load offset=1065080
              local.tee 3
              local.get 5
              i32.add
              local.tee 0
              local.get 4
              local.get 5
              i32.sub
              local.tee 4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.get 4
              i32.store offset=1065068
              i32.const 0
              local.get 0
              i32.store offset=1065080
              local.get 3
              local.get 5
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 3
              i32.const 8
              i32.add
              local.set 4
              br 4 (;@1;)
            end
            i32.const 0
            local.set 4
            i32.const 0
            i32.const 48
            i32.store offset=1065552
            br 3 (;@1;)
          end
          local.get 4
          local.get 8
          i32.store
          local.get 4
          local.get 4
          i32.load offset=4
          local.get 6
          i32.add
          i32.store offset=4
          local.get 8
          local.get 9
          local.get 5
          call $prepend_alloc
          local.set 4
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              local.get 9
              i32.load offset=28
              local.tee 8
              i32.const 2
              i32.shl
              i32.const 1065360
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 4
              i32.store
              local.get 4
              br_if 1 (;@4;)
              i32.const 0
              local.get 10
              i32.const -2
              local.get 8
              i32.rotl
              i32.and
              local.tee 10
              i32.store offset=1065060
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 11
                i32.load offset=16
                local.get 9
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.get 4
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 11
              local.get 4
              i32.store offset=20
            end
            local.get 4
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 4
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 9
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 4
            i32.store offset=24
          end
          local.get 9
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 4
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 9
            local.get 3
            local.get 5
            i32.or
            local.tee 4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 9
            local.get 4
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 9
          local.get 5
          i32.add
          local.tee 8
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 9
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 3
          i32.add
          local.get 3
          i32.store
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const -8
            i32.and
            i32.const 1065096
            i32.add
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1065056
                local.tee 5
                i32.const 1
                local.get 3
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 3
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 3
                i32.or
                i32.store offset=1065056
                local.get 4
                local.set 3
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=8
              local.set 3
            end
            local.get 3
            local.get 8
            i32.store offset=12
            local.get 4
            local.get 8
            i32.store offset=8
            local.get 8
            local.get 4
            i32.store offset=12
            local.get 8
            local.get 3
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 38
            local.get 3
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 4
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 4
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 8
          local.get 4
          i32.store offset=28
          local.get 8
          i64.const 0
          i64.store offset=16 align=4
          local.get 4
          i32.const 2
          i32.shl
          i32.const 1065360
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 10
            i32.const 1
            local.get 4
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 8
            i32.store
            i32.const 0
            local.get 10
            local.get 0
            i32.or
            i32.store offset=1065060
            local.get 8
            local.get 5
            i32.store offset=24
            local.get 8
            local.get 8
            i32.store offset=8
            local.get 8
            local.get 8
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.const 25
          local.get 4
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 4
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 4
          local.get 5
          i32.load
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              local.get 0
              local.tee 5
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 3
              i32.eq
              br_if 1 (;@4;)
              local.get 4
              i32.const 29
              i32.shr_u
              local.set 0
              local.get 4
              i32.const 1
              i32.shl
              local.set 4
              local.get 5
              local.get 0
              i32.const 4
              i32.and
              i32.add
              local.tee 6
              i32.load offset=16
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 16
            i32.add
            local.get 8
            i32.store
            local.get 8
            local.get 5
            i32.store offset=24
            local.get 8
            local.get 8
            i32.store offset=12
            local.get 8
            local.get 8
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 4
          local.get 8
          i32.store offset=12
          local.get 5
          local.get 8
          i32.store offset=8
          local.get 8
          i32.const 0
          i32.store offset=24
          local.get 8
          local.get 5
          i32.store offset=12
          local.get 8
          local.get 4
          i32.store offset=8
        end
        local.get 9
        i32.const 8
        i32.add
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            local.get 8
            i32.load offset=28
            local.tee 9
            i32.const 2
            i32.shl
            i32.const 1065360
            i32.add
            local.tee 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            i32.store
            local.get 4
            br_if 1 (;@3;)
            i32.const 0
            local.get 10
            i32.const -2
            local.get 9
            i32.rotl
            i32.and
            i32.store offset=1065060
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.get 8
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 4
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 2
            local.get 4
            i32.store offset=20
          end
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 2
        i32.store offset=24
        block  ;; label = @3
          local.get 8
          i32.load offset=16
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 4
          i32.store offset=24
        end
        local.get 8
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 4
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          local.get 5
          i32.or
          local.tee 4
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 4
          i32.add
          local.tee 4
          local.get 4
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 8
        local.get 5
        i32.add
        local.tee 0
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 8
        local.get 5
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 3
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const -8
          i32.and
          i32.const 1065096
          i32.add
          local.set 5
          i32.const 0
          i32.load offset=1065076
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 7
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 9
              local.get 6
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 9
              local.get 6
              i32.or
              i32.store offset=1065056
              local.get 5
              local.set 9
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=8
            local.set 9
          end
          local.get 9
          local.get 4
          i32.store offset=12
          local.get 5
          local.get 4
          i32.store offset=8
          local.get 4
          local.get 5
          i32.store offset=12
          local.get 4
          local.get 9
          i32.store offset=8
        end
        i32.const 0
        local.get 0
        i32.store offset=1065076
        i32.const 0
        local.get 3
        i32.store offset=1065064
      end
      local.get 8
      i32.const 8
      i32.add
      local.set 4
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $prepend_alloc (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    local.get 0
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 3
    local.get 2
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 1
    i32.const -8
    local.get 1
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 4
    local.get 3
    local.get 2
    i32.add
    local.tee 5
    i32.sub
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1065080
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1065080
        i32.const 0
        i32.const 0
        i32.load offset=1065068
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=1065068
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1065076
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1065076
        i32.const 0
        i32.const 0
        i32.load offset=1065064
        local.get 0
        i32.add
        local.tee 2
        i32.store offset=1065064
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 2
        i32.add
        local.get 2
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        local.set 6
        local.get 4
        i32.load offset=12
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.load offset=8
              local.tee 7
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1065056
              i32.const -2
              local.get 1
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1065056
              br 2 (;@3;)
            end
            local.get 2
            local.get 7
            i32.store offset=8
            local.get 7
            local.get 2
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=24
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 4
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=8
              local.tee 1
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.load offset=20
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const 20
                  i32.add
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 4
                i32.load offset=16
                local.tee 1
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.const 16
                i32.add
                local.set 7
              end
              loop  ;; label = @6
                local.get 7
                local.set 9
                local.get 1
                local.tee 2
                i32.const 20
                i32.add
                local.set 7
                local.get 2
                i32.load offset=20
                local.tee 1
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.set 7
                local.get 2
                i32.load offset=16
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 9
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 2
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 4
              i32.load offset=28
              local.tee 7
              i32.const 2
              i32.shl
              i32.const 1065360
              i32.add
              local.tee 1
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1065060
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1065060
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 8
          i32.store offset=24
          block  ;; label = @4
            local.get 4
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 2
            i32.store offset=24
          end
          local.get 4
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.store offset=20
          local.get 1
          local.get 2
          i32.store offset=24
        end
        local.get 6
        local.get 0
        i32.add
        local.set 0
        local.get 4
        local.get 6
        i32.add
        local.tee 4
        i32.load offset=4
        local.set 1
      end
      local.get 4
      local.get 1
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 5
      local.get 0
      i32.add
      local.get 0
      i32.store
      local.get 5
      local.get 0
      i32.const 1
      i32.or
      i32.store offset=4
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 1065096
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1065056
            local.tee 1
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            local.get 0
            i32.or
            i32.store offset=1065056
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 5
        i32.store offset=12
        local.get 2
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 2
        i32.store offset=12
        local.get 5
        local.get 0
        i32.store offset=8
        br 1 (;@1;)
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 5
      local.get 2
      i32.store offset=28
      local.get 5
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1065360
      i32.add
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1065060
        local.tee 7
        i32.const 1
        local.get 2
        i32.shl
        local.tee 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        i32.store
        i32.const 0
        local.get 7
        local.get 4
        i32.or
        i32.store offset=1065060
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 5
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.const 25
      local.get 2
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 2
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 2
      local.get 1
      i32.load
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 7
          local.tee 1
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 0
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const 29
          i32.shr_u
          local.set 7
          local.get 2
          i32.const 1
          i32.shl
          local.set 2
          local.get 1
          local.get 7
          i32.const 4
          i32.and
          i32.add
          local.tee 4
          i32.load offset=16
          local.tee 7
          br_if 0 (;@3;)
        end
        local.get 4
        i32.const 16
        i32.add
        local.get 5
        i32.store
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=12
        local.get 5
        local.get 5
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      local.tee 2
      local.get 5
      i32.store offset=12
      local.get 1
      local.get 5
      i32.store offset=8
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 8
    i32.add)
  (func $free (type 0) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 4
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1065072
        i32.lt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 0
                i32.load offset=1065076
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=12
                local.set 2
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 1
                  i32.load offset=8
                  local.tee 5
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065056
                  i32.const -2
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1065056
                  br 5 (;@2;)
                end
                local.get 1
                i32.load offset=24
                local.set 6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 3
              i32.load offset=4
              local.tee 2
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              local.get 3
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 0
              i32.store offset=1065064
              local.get 3
              local.get 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 2
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 2
            i32.store offset=12
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 1
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 1065360
            i32.add
            local.tee 4
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.store
            local.get 2
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1065060
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1065060
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.load offset=16
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 2
            i32.store offset=20
          end
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 2
        local.get 6
        i32.store offset=24
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        i32.load offset=20
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.store offset=20
        local.get 4
        local.get 2
        i32.store offset=24
      end
      local.get 1
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1065080
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1065080
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065068
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1065068
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  i32.const 0
                  i32.load offset=1065076
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1065064
                  i32.const 0
                  i32.const 0
                  i32.store offset=1065076
                  return
                end
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1065076
                  local.tee 6
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1065076
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065064
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1065064
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.add
                  local.get 0
                  i32.store
                  return
                end
                local.get 4
                i32.const -8
                i32.and
                local.get 0
                i32.add
                local.set 0
                local.get 3
                i32.load offset=12
                local.set 2
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 2
                    local.get 3
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1065056
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1065056
                    br 5 (;@3;)
                  end
                  local.get 2
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  local.get 2
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 3
                i32.load offset=24
                local.set 8
                block  ;; label = @7
                  local.get 2
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 3
              local.get 4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 2
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 3
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1065360
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1065060
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1065060
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 2
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.store offset=20
            end
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 8
          i32.store offset=24
          block  ;; label = @4
            local.get 3
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 2
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 6
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=1065064
        return
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 1065096
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1065056
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 0
            i32.or
            i32.store offset=1065056
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1065360
      i32.add
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1065060
              local.tee 4
              i32.const 1
              local.get 2
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              local.get 5
              local.get 1
              i32.store
              i32.const 0
              local.get 4
              local.get 3
              i32.or
              i32.store offset=1065060
              i32.const 8
              local.set 0
              i32.const 24
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            i32.const 0
            i32.const 25
            local.get 2
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 2
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 2
            local.get 5
            i32.load
            local.set 5
            loop  ;; label = @5
              local.get 5
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 5
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 5
              i32.const 4
              i32.and
              i32.add
              local.tee 3
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const 16
            i32.add
            local.get 1
            i32.store
            i32.const 8
            local.set 0
            i32.const 24
            local.set 2
            local.get 4
            local.set 5
          end
          local.get 1
          local.set 4
          local.get 1
          local.set 3
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 5
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        i32.const 0
        local.set 3
        i32.const 24
        local.set 0
        i32.const 8
        local.set 2
      end
      local.get 1
      local.get 2
      i32.add
      local.get 5
      i32.store
      local.get 1
      local.get 4
      i32.store offset=12
      local.get 1
      local.get 0
      i32.add
      local.get 3
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=1065088
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=1065088
    end)
  (func $calloc (type 7) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      memory.fill
    end
    local.get 0)
  (func $realloc (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1065552
      i32.const 0
      return
    end
    i32.const 16
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.get 1
    i32.const 11
    i32.lt_u
    select
    local.set 2
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    i32.load
    local.tee 4
    i32.const -8
    i32.and
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.const 4
          i32.or
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1065536
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 0
        i32.const -8
        i32.add
        local.tee 6
        local.get 5
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 5
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1065080
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1065068
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1065080
          i32.const 0
          local.get 5
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1065068
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1065076
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1065064
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 2
              local.get 4
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 6
              local.get 5
              i32.add
              local.tee 5
              local.get 1
              i32.store
              local.get 5
              local.get 5
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 5
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 5
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=1065076
          i32.const 0
          local.get 1
          i32.store offset=1065064
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 8
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.const -8
        i32.and
        local.get 5
        i32.add
        local.tee 9
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 9
        local.get 2
        i32.sub
        local.set 10
        local.get 7
        i32.load offset=12
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.load offset=8
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1065056
              i32.const -2
              local.get 8
              i32.const 3
              i32.shr_u
              i32.rotl
              i32.and
              i32.store offset=1065056
              br 2 (;@3;)
            end
            local.get 1
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 1
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 11
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=8
              local.tee 5
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 5
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 7
                  i32.load offset=20
                  local.tee 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 20
                  i32.add
                  local.set 8
                  br 1 (;@6;)
                end
                local.get 7
                i32.load offset=16
                local.tee 5
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 16
                i32.add
                local.set 8
              end
              loop  ;; label = @6
                local.get 8
                local.set 12
                local.get 5
                local.tee 1
                i32.const 20
                i32.add
                local.set 8
                local.get 1
                i32.load offset=20
                local.tee 5
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 8
                local.get 1
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 12
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 1
          end
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 7
              i32.load offset=28
              local.tee 8
              i32.const 2
              i32.shl
              i32.const 1065360
              i32.add
              local.tee 5
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1065060
              i32.const -2
              local.get 8
              i32.rotl
              i32.and
              i32.store offset=1065060
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 11
                i32.load offset=16
                local.get 7
                i32.ne
                br_if 0 (;@6;)
                local.get 11
                local.get 1
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 11
              local.get 1
              i32.store offset=20
            end
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 5
            i32.store offset=16
            local.get 5
            local.get 1
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          i32.store offset=20
          local.get 5
          local.get 1
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 10
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.and
          local.get 9
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 9
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 3
        local.get 2
        local.get 4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 6
        local.get 2
        i32.add
        local.tee 1
        local.get 10
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 6
        local.get 9
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 10
        call $dispose_chunk
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      block  ;; label = @2
        i32.const -4
        i32.const -8
        local.get 3
        i32.load
        local.tee 5
        i32.const 3
        i32.and
        select
        local.get 5
        i32.const -8
        i32.and
        i32.add
        local.tee 5
        local.get 1
        local.get 5
        local.get 1
        i32.lt_u
        select
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        memory.copy
      end
      local.get 0
      call $dlfree
      local.get 2
      local.set 0
    end
    local.get 0)
  (func $dispose_chunk (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 4
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 4
                i32.sub
                local.tee 0
                i32.const 0
                i32.load offset=1065076
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=12
                local.set 3
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 0
                  i32.load offset=8
                  local.tee 5
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065056
                  i32.const -2
                  local.get 4
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1065056
                  br 5 (;@2;)
                end
                local.get 0
                i32.load offset=24
                local.set 6
                block  ;; label = @7
                  local.get 3
                  local.get 0
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 1
              i32.store offset=1065064
              local.get 2
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 3
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 3
            i32.store offset=12
            br 2 (;@2;)
          end
          i32.const 0
          local.set 3
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 1065360
            i32.add
            local.tee 4
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1065060
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1065060
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.load offset=16
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 3
            i32.store offset=20
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 6
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.store offset=20
        local.get 4
        local.get 3
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 4
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1065080
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1065080
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065068
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1065068
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 0
                  i32.load offset=1065076
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1065064
                  i32.const 0
                  i32.const 0
                  i32.store offset=1065076
                  return
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1065076
                  local.tee 6
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1065076
                  i32.const 0
                  i32.const 0
                  i32.load offset=1065064
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1065064
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  return
                end
                local.get 4
                i32.const -8
                i32.and
                local.get 1
                i32.add
                local.set 1
                local.get 2
                i32.load offset=12
                local.set 3
                block  ;; label = @7
                  local.get 4
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 3
                    local.get 2
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1065056
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1065056
                    br 5 (;@3;)
                  end
                  local.get 3
                  local.get 5
                  i32.store offset=8
                  local.get 5
                  local.get 3
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 2
                i32.load offset=24
                local.set 8
                block  ;; label = @7
                  local.get 3
                  local.get 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=20
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 20
                    i32.add
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 5
                end
                loop  ;; label = @7
                  local.get 5
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 5
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 4
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 3
          end
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 2
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1065360
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1065060
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1065060
              br 2 (;@3;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.load offset=16
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 8
                local.get 3
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 3
              i32.store offset=20
            end
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 8
          i32.store offset=24
          block  ;; label = @4
            local.get 2
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 3
            i32.store offset=24
          end
          local.get 2
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 3
          i32.store offset=24
        end
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 6
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        i32.store offset=1065064
        return
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        i32.const 1065096
        i32.add
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1065056
            local.tee 4
            i32.const 1
            local.get 1
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 1
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 1
            i32.or
            i32.store offset=1065056
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 1
        end
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 38
        local.get 1
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 3
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 3
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1065360
      i32.add
      local.set 4
      block  ;; label = @2
        i32.const 0
        i32.load offset=1065060
        local.tee 5
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store
        i32.const 0
        local.get 5
        local.get 2
        i32.or
        i32.store offset=1065060
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 4
      i32.load
      local.set 5
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 5
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 4
          local.get 5
          i32.const 4
          i32.and
          i32.add
          local.tee 2
          i32.load offset=16
          local.tee 5
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 16
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func $posix_memalign (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 16
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          call $dlmalloc
          local.set 1
          br 1 (;@2;)
        end
        i32.const 28
        local.set 3
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
        local.get 1
        i32.const 2
        i32.shr_u
        local.tee 4
        local.get 4
        i32.const -1
        i32.add
        i32.and
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.const -64
          local.get 1
          i32.sub
          i32.le_u
          br_if 0 (;@3;)
          i32.const 48
          return
        end
        local.get 1
        i32.const 16
        local.get 1
        i32.const 16
        i32.gt_u
        select
        local.get 2
        call $internal_memalign
        local.set 1
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 48
        return
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func $internal_memalign (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 16
        local.get 0
        i32.const 16
        i32.gt_u
        select
        local.tee 2
        local.get 2
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.tee 0
        i32.const 1
        i32.shl
        local.set 3
        local.get 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      local.get 0
      i32.sub
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1065552
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.add
      i32.const 12
      i32.add
      call $dlmalloc
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      i32.const 0
      local.get 0
      local.get 3
      local.get 2
      i32.sub
      i32.const 15
      i32.gt_u
      select
      i32.add
      local.tee 0
      local.get 2
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 2
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 2
      local.get 3
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 3
      call $dispose_chunk
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 2
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 3
      local.get 2
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.add
      local.tee 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call $dispose_chunk
    end
    local.get 0
    i32.const 8
    i32.add)
  (func $_Exit (type 0) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__wasilibc_ensure_environ (type 1)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1064888
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call $__wasilibc_initialize_environ
    end)
  (func $__wasilibc_initialize_environ (type 1)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call $__wasi_environ_sizes_get
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 1
          br_if 0 (;@3;)
          i32.const 1065556
          local.set 1
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            call $malloc
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 4
            call $calloc
            local.tee 1
            br_if 1 (;@3;)
            local.get 2
            call $free
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        local.get 1
        local.get 2
        call $__wasi_environ_get
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call $free
        local.get 1
        call $free
      end
      i32.const 71
      call $_Exit
      unreachable
    end
    i32.const 0
    local.get 1
    i32.store offset=1064888
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__wasi_environ_get (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_get
    i32.const 65535
    i32.and)
  (func $__wasi_environ_sizes_get (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 0) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $abort (type 1)
    unreachable)
  (func $getcwd (type 7) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1064892
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        call $strdup
        local.tee 0
        br_if 1 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1065552
        i32.const 0
        return
      end
      block  ;; label = @2
        local.get 1
        local.get 2
        call $strlen
        i32.const 1
        i32.add
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=1065552
        i32.const 0
        return
      end
      local.get 0
      local.get 2
      call $strcpy
      local.set 0
    end
    local.get 0)
  (func $sbrk (type 3) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1065552
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $getenv (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $__wasilibc_ensure_environ
    block  ;; label = @1
      local.get 0
      i32.const 61
      call $__strchrnul
      local.tee 1
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 0
      i32.sub
      local.tee 3
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1064888
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 4
      i32.add
      local.set 4
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            local.get 3
            call $strncmp
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            i32.add
            local.tee 1
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 4
          i32.load
          local.set 1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 1
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 2
    end
    local.get 2)
  (func $dummy (type 1))
  (func $__wasm_call_dtors (type 1)
    call $dummy
    call $dummy)
  (func $__strchrnul (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              return
            end
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            return
          end
          local.get 0
          local.get 0
          call $strlen
          i32.add
          return
        end
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 2
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      block  ;; label = @2
        i32.const 16843008
        local.get 0
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 16843009
        i32.mul
        local.set 2
        loop  ;; label = @3
          i32.const 16843008
          local.get 3
          local.get 2
          i32.xor
          local.tee 3
          i32.sub
          local.get 3
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.ne
          br_if 1 (;@2;)
          i32.const 16843008
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 3
          i32.sub
          local.get 3
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 255
        i32.and
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func $__stpcpy (type 7) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.load8_u
          local.tee 2
          i32.store8
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.set 0
            local.get 2
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.load8_u
          local.tee 2
          i32.store8
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        i32.const 16843008
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.get 2
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.ne
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          i32.const 16843008
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.sub
          local.get 2
          i32.or
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.store8
      block  ;; label = @2
        local.get 2
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 2
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 2
        i32.load8_u
        local.tee 0
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func $strcpy (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0)
  (func $strdup (type 3) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      memory.copy
    end
    local.get 2)
  (func $dummy.1 (type 7) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.1)
  (func $strerror (type 3) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1065584
      local.tee 1
      br_if 0 (;@1;)
      i32.const 1065560
      local.set 1
      i32.const 0
      i32.const 1065560
      i32.store offset=1065584
    end
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 1060960
    i32.add
    i32.load16_u
    i32.const 1059404
    i32.add
    local.get 1
    i32.load offset=20
    call $__lctrans)
  (func $strerror_r (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $strerror
        local.tee 3
        call $strlen
        local.tee 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 68
        local.set 0
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          local.get 2
          memory.copy
        end
        local.get 1
        local.get 2
        i32.add
        i32.const 0
        i32.store8
        i32.const 68
        return
      end
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.add
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        local.get 2
        memory.copy
      end
      i32.const 0
      local.set 0
    end
    local.get 0)
  (func $strlen (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.sub
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 2
      local.get 1
      i32.const -5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        i32.const 16843008
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.eq
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.load8_u
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $strncmp (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 255
          i32.and
          local.get 1
          i32.load8_u
          local.tee 4
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.load8_u
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 3
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 3
      end
      local.get 3
      i32.const 255
      i32.and
      local.set 3
    end
    local.get 3
    local.get 1
    i32.load8_u
    i32.sub)
  (func $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E (type 4) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN5alloc5alloc18handle_alloc_error17h89655e17149f92f4E
      unreachable
    end
    local.get 2
    call $_ZN5alloc7raw_vec17capacity_overflow17h39d074e6545d004cE
    unreachable)
  (func $_ZN5alloc5alloc18handle_alloc_error17h89655e17149f92f4E (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_RNvCsj3IbkTTFM3W_7___rustc26___rust_alloc_error_handler
    unreachable)
  (func $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h75d808e795d7e4a6E (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      local.get 1
      i32.load offset=8
      local.tee 4
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 1
          i32.add
          local.tee 3
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          block  ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.store offset=28
            local.get 2
            local.get 1
            i32.load offset=4
            i32.store offset=20
            i32.const 1
            local.set 5
          end
          local.get 2
          local.get 5
          i32.store offset=24
          local.get 2
          i32.const 8
          i32.add
          i32.const 1
          local.get 3
          local.get 2
          i32.const 20
          i32.add
          call $_ZN5alloc7raw_vec11finish_grow17hfdff8e7ace53127bE
          local.get 2
          i32.load offset=8
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=16
          local.set 6
          local.get 2
          i32.load offset=12
          local.set 5
        end
        local.get 5
        local.get 6
        i32.const 1061116
        call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
        unreachable
      end
      local.get 1
      local.get 2
      i32.load offset=12
      i32.store offset=4
    end
    local.get 1
    i32.load offset=4
    local.tee 5
    local.get 4
    i32.add
    i32.const 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 4
        i32.const 1
        i32.add
        local.tee 1
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        local.get 5
        local.get 3
        i32.const 1
        call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_dealloc
        br 1 (;@1;)
      end
      local.get 5
      local.get 3
      i32.const 1
      local.get 1
      call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_realloc
      local.tee 4
      br_if 0 (;@1;)
      i32.const 1
      local.get 1
      call $_ZN5alloc5alloc18handle_alloc_error17h89655e17149f92f4E
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc7raw_vec11finish_grow17hfdff8e7ace53127bE (type 6) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=4
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.load offset=8
              local.tee 4
              br_if 0 (;@5;)
              local.get 2
              br_if 2 (;@3;)
              i32.const 0
              local.set 3
              br 4 (;@1;)
            end
            local.get 3
            i32.load
            local.get 4
            local.get 1
            local.get 2
            call $_RNvCsj3IbkTTFM3W_7___rustc14___rust_realloc
            local.set 3
            br 2 (;@2;)
          end
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
        local.get 2
        local.get 1
        call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
        local.set 3
      end
      local.get 3
      local.get 1
      local.get 3
      select
      local.set 1
      local.get 3
      i32.eqz
      local.set 3
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h39d074e6545d004cE (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1061184
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h7c82bfd0c45c337aE (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const -1
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.add
            local.tee 5
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            call $_RNvCsj3IbkTTFM3W_7___rustc35___rust_no_alloc_shim_is_unstable_v2
            i32.const 1
            local.set 4
            local.get 5
            i32.const 1
            call $_RNvCsj3IbkTTFM3W_7___rustc12___rust_alloc
            local.tee 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 1
              local.get 2
              memory.copy
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 7
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                i32.eqz
                br_if 4 (;@2;)
                block  ;; label = @7
                  local.get 1
                  i32.load8_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 4
                  br 2 (;@5;)
                end
                i32.const 1
                local.set 4
                local.get 2
                i32.const 1
                i32.eq
                br_if 4 (;@2;)
                local.get 1
                i32.load8_u offset=1
                i32.eqz
                br_if 1 (;@5;)
                i32.const 2
                local.set 4
                local.get 2
                i32.const 2
                i32.eq
                br_if 4 (;@2;)
                local.get 1
                i32.load8_u offset=2
                i32.eqz
                br_if 1 (;@5;)
                i32.const 3
                local.set 4
                local.get 2
                i32.const 3
                i32.eq
                br_if 4 (;@2;)
                local.get 1
                i32.load8_u offset=3
                i32.eqz
                br_if 1 (;@5;)
                i32.const 4
                local.set 4
                local.get 2
                i32.const 4
                i32.eq
                br_if 4 (;@2;)
                local.get 1
                i32.load8_u offset=4
                i32.eqz
                br_if 1 (;@5;)
                i32.const 5
                local.set 4
                local.get 2
                i32.const 5
                i32.eq
                br_if 4 (;@2;)
                local.get 1
                i32.load8_u offset=5
                i32.eqz
                br_if 1 (;@5;)
                i32.const 6
                local.set 4
                local.get 2
                i32.const 6
                i32.eq
                br_if 4 (;@2;)
                local.get 1
                i32.load8_u offset=6
                i32.eqz
                br_if 1 (;@5;)
                br 4 (;@2;)
              end
              local.get 3
              i32.const 8
              i32.add
              i32.const 0
              local.get 1
              local.get 2
              call $_ZN4core5slice6memchr14memchr_aligned17heb6a1ab59d075a42E
              local.get 3
              i32.load offset=8
              i32.const 1
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              local.get 3
              i32.load offset=12
              local.set 4
            end
            local.get 0
            local.get 4
            i32.store offset=12
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 6
            i32.store offset=4
            local.get 0
            local.get 5
            i32.store
            br 3 (;@1;)
          end
          local.get 4
          local.get 5
          i32.const 1061132
          call $_ZN5alloc7raw_vec12handle_error17ha7b2fd9267d94b41E
          unreachable
        end
        i32.const 1061148
        call $_ZN4core6option13unwrap_failed17h4201e3fa52b09e6aE
        unreachable
      end
      local.get 3
      local.get 2
      i32.store offset=28
      local.get 3
      local.get 6
      i32.store offset=24
      local.get 3
      local.get 5
      i32.store offset=20
      local.get 3
      local.get 3
      i32.const 20
      i32.add
      call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h75d808e795d7e4a6E
      local.get 0
      local.get 3
      i64.load
      i64.store offset=4 align=4
      local.get 0
      i32.const -2147483648
      i32.store
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b77ddee99a382a4E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 1
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.load
      local.tee 5
      i32.const 34
      local.get 2
      i32.load offset=4
      local.tee 6
      i32.load offset=16
      local.tee 7
      call_indirect (type 7)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        i32.const 0
        local.set 9
        i32.const 0
        local.get 1
        i32.sub
        local.set 10
        i32.const 0
        local.set 8
        local.get 0
        local.set 11
        local.get 1
        local.set 12
        loop  ;; label = @3
          local.get 11
          local.get 12
          i32.add
          local.set 13
          i32.const 0
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 11
                local.get 2
                i32.add
                local.tee 14
                i32.load8_u
                local.tee 15
                i32.const -127
                i32.add
                i32.const 255
                i32.and
                i32.const 161
                i32.lt_u
                br_if 1 (;@5;)
                local.get 15
                i32.const 34
                i32.eq
                br_if 1 (;@5;)
                local.get 15
                i32.const 92
                i32.eq
                br_if 1 (;@5;)
                local.get 12
                local.get 2
                i32.const 1
                i32.add
                local.tee 2
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 8
              local.get 12
              i32.add
              local.set 8
              br 1 (;@4;)
            end
            local.get 14
            i32.const 1
            i32.add
            local.set 11
            local.get 8
            local.get 2
            i32.add
            local.set 12
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 14
                  i32.load8_s
                  local.tee 15
                  i32.const -1
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 15
                  i32.const 255
                  i32.and
                  local.set 15
                  br 1 (;@6;)
                end
                local.get 11
                i32.load8_u
                i32.const 63
                i32.and
                local.set 16
                local.get 15
                i32.const 31
                i32.and
                local.set 17
                local.get 14
                i32.const 2
                i32.add
                local.set 11
                block  ;; label = @7
                  local.get 15
                  i32.const -33
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 17
                  i32.const 6
                  i32.shl
                  local.get 16
                  i32.or
                  local.set 15
                  br 1 (;@6;)
                end
                local.get 16
                i32.const 6
                i32.shl
                local.get 11
                i32.load8_u
                i32.const 63
                i32.and
                i32.or
                local.set 16
                local.get 14
                i32.const 3
                i32.add
                local.set 11
                block  ;; label = @7
                  local.get 15
                  i32.const -16
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 16
                  local.get 17
                  i32.const 12
                  i32.shl
                  i32.or
                  local.set 15
                  br 1 (;@6;)
                end
                local.get 11
                i32.load8_u
                local.set 15
                local.get 14
                i32.const 4
                i32.add
                local.set 11
                local.get 16
                i32.const 6
                i32.shl
                local.get 15
                i32.const 63
                i32.and
                i32.or
                local.get 17
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                i32.or
                local.tee 15
                i32.const 1114112
                i32.ne
                br_if 0 (;@6;)
                local.get 12
                local.set 8
                br 1 (;@5;)
              end
              local.get 3
              local.get 15
              i32.const 65537
              call $_ZN4core4char7methods22_$LT$impl$u20$char$GT$16escape_debug_ext17h8d08026254b415a7E
              block  ;; label = @6
                local.get 3
                i32.load8_u offset=13
                local.tee 14
                local.get 3
                i32.load8_u offset=12
                local.tee 16
                i32.sub
                local.tee 17
                i32.const 255
                i32.and
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 9
                      local.get 12
                      i32.gt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 9
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 9
                          local.get 1
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 9
                          local.get 1
                          i32.ne
                          br_if 2 (;@9;)
                          br 1 (;@10;)
                        end
                        local.get 0
                        local.get 9
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 1 (;@9;)
                      end
                      block  ;; label = @10
                        local.get 12
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 12
                          local.get 1
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 12
                          local.get 10
                          i32.add
                          i32.eqz
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                        local.get 0
                        local.get 8
                        i32.add
                        local.get 2
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.le_s
                        br_if 1 (;@9;)
                      end
                      local.get 5
                      local.get 0
                      local.get 9
                      i32.add
                      local.get 8
                      local.get 9
                      i32.sub
                      local.get 2
                      i32.add
                      local.get 6
                      i32.load offset=12
                      local.tee 12
                      call_indirect (type 5)
                      i32.eqz
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 0
                    local.get 1
                    local.get 9
                    local.get 8
                    local.get 2
                    i32.add
                    i32.const 1061944
                    call $_ZN4core3str16slice_error_fail17h77032933714d6380E
                    unreachable
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 14
                      i32.const 129
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 3
                      i32.load
                      local.get 7
                      call_indirect (type 7)
                      br_if 2 (;@7;)
                      br 1 (;@8;)
                    end
                    local.get 5
                    local.get 3
                    local.get 16
                    i32.add
                    local.get 17
                    local.get 12
                    call_indirect (type 5)
                    br_if 1 (;@7;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 15
                      i32.const 128
                      i32.ge_u
                      br_if 0 (;@9;)
                      i32.const 1
                      local.set 14
                      br 1 (;@8;)
                    end
                    block  ;; label = @9
                      local.get 15
                      i32.const 2048
                      i32.ge_u
                      br_if 0 (;@9;)
                      i32.const 2
                      local.set 14
                      br 1 (;@8;)
                    end
                    i32.const 3
                    i32.const 4
                    local.get 15
                    i32.const 65536
                    i32.lt_u
                    select
                    local.set 14
                  end
                  local.get 14
                  local.get 8
                  i32.add
                  local.get 2
                  i32.add
                  local.set 9
                  br 1 (;@6;)
                end
                i32.const 1
                local.set 4
                br 5 (;@1;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 15
                  i32.const 128
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 15
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 15
                  i32.const 2048
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 2
                  local.set 15
                  br 1 (;@6;)
                end
                i32.const 3
                i32.const 4
                local.get 15
                i32.const 65536
                i32.lt_u
                select
                local.set 15
              end
              local.get 15
              local.get 8
              i32.add
              local.get 2
              i32.add
              local.set 8
            end
            local.get 13
            local.get 11
            i32.sub
            local.tee 12
            br_if 1 (;@3;)
          end
        end
        block  ;; label = @3
          local.get 9
          local.get 8
          i32.gt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 9
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 9
              local.get 1
              i32.lt_u
              br_if 0 (;@5;)
              local.get 9
              local.set 2
              local.get 9
              local.get 1
              i32.ne
              br_if 2 (;@3;)
              br 1 (;@4;)
            end
            local.get 9
            local.set 2
            local.get 0
            local.get 9
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            local.get 8
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 8
            local.get 1
            i32.lt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 1
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            local.set 9
            br 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          br_if 1 (;@2;)
          local.get 2
          local.set 9
        end
        local.get 0
        local.get 1
        local.get 9
        local.get 8
        i32.const 1061960
        call $_ZN4core3str16slice_error_fail17h77032933714d6380E
        unreachable
      end
      local.get 5
      local.get 0
      local.get 2
      i32.add
      local.get 8
      local.get 2
      i32.sub
      local.get 6
      i32.load offset=12
      call_indirect (type 5)
      br_if 0 (;@1;)
      local.get 5
      i32.const 34
      local.get 7
      call_indirect (type 7)
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN4core4char7methods22_$LT$impl$u20$char$GT$16escape_debug_ext17h8d08026254b415a7E (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  br_table 2 (;@13;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 3 (;@12;) 5 (;@10;) 1 (;@14;) 1 (;@14;) 4 (;@11;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 8 (;@7;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 1 (;@14;) 7 (;@8;) 0 (;@15;)
                                end
                                local.get 1
                                i32.const 92
                                i32.eq
                                br_if 5 (;@9;)
                              end
                              local.get 2
                              i32.const 1
                              i32.and
                              i32.eqz
                              br_if 7 (;@6;)
                              local.get 1
                              i32.const 767
                              i32.le_u
                              br_if 7 (;@6;)
                              local.get 1
                              call $_ZN4core7unicode12unicode_data15grapheme_extend11lookup_slow17h6163f3b5eb7e55e7E
                              i32.eqz
                              br_if 7 (;@6;)
                              local.get 3
                              i32.const 12
                              i32.add
                              i32.const 2
                              i32.add
                              i32.const 0
                              i32.store8
                              local.get 3
                              i32.const 0
                              i32.store16 offset=12
                              local.get 3
                              local.get 1
                              i32.const 20
                              i32.shr_u
                              i32.load8_u offset=1062185
                              i32.store8 offset=15
                              local.get 3
                              local.get 1
                              i32.const 4
                              i32.shr_u
                              i32.const 15
                              i32.and
                              i32.load8_u offset=1062185
                              i32.store8 offset=19
                              local.get 3
                              local.get 1
                              i32.const 8
                              i32.shr_u
                              i32.const 15
                              i32.and
                              i32.load8_u offset=1062185
                              i32.store8 offset=18
                              local.get 3
                              local.get 1
                              i32.const 12
                              i32.shr_u
                              i32.const 15
                              i32.and
                              i32.load8_u offset=1062185
                              i32.store8 offset=17
                              local.get 3
                              local.get 1
                              i32.const 16
                              i32.shr_u
                              i32.const 15
                              i32.and
                              i32.load8_u offset=1062185
                              i32.store8 offset=16
                              local.get 3
                              i32.const 12
                              i32.add
                              local.get 1
                              i32.const 1
                              i32.or
                              i32.clz
                              i32.const 2
                              i32.shr_u
                              local.tee 2
                              i32.add
                              local.tee 4
                              i32.const 123
                              i32.store8
                              local.get 4
                              i32.const -1
                              i32.add
                              i32.const 117
                              i32.store8
                              local.get 3
                              i32.const 12
                              i32.add
                              local.get 2
                              i32.const -2
                              i32.add
                              local.tee 2
                              i32.add
                              i32.const 92
                              i32.store8
                              local.get 3
                              i32.const 12
                              i32.add
                              i32.const 8
                              i32.add
                              local.tee 4
                              local.get 1
                              i32.const 15
                              i32.and
                              i32.load8_u offset=1062185
                              i32.store8
                              local.get 0
                              local.get 3
                              i64.load offset=12 align=2
                              i64.store align=1
                              local.get 3
                              i32.const 125
                              i32.store8 offset=21
                              local.get 0
                              i32.const 8
                              i32.add
                              local.get 4
                              i32.load16_u
                              i32.store16 align=1
                              br 8 (;@5;)
                            end
                            local.get 0
                            i64.const 0
                            i64.store offset=2 align=2
                            local.get 0
                            i32.const 12380
                            i32.store16
                            br 10 (;@2;)
                          end
                          local.get 0
                          i64.const 0
                          i64.store offset=2 align=2
                          local.get 0
                          i32.const 29788
                          i32.store16
                          br 9 (;@2;)
                        end
                        local.get 0
                        i64.const 0
                        i64.store offset=2 align=2
                        local.get 0
                        i32.const 29276
                        i32.store16
                        br 8 (;@2;)
                      end
                      local.get 0
                      i64.const 0
                      i64.store offset=2 align=2
                      local.get 0
                      i32.const 28252
                      i32.store16
                      br 7 (;@2;)
                    end
                    local.get 0
                    i64.const 0
                    i64.store offset=2 align=2
                    local.get 0
                    i32.const 23644
                    i32.store16
                    br 6 (;@2;)
                  end
                  local.get 2
                  i32.const 256
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i64.const 0
                  i64.store offset=2 align=2
                  local.get 0
                  i32.const 10076
                  i32.store16
                  br 5 (;@2;)
                end
                local.get 2
                i32.const 16777215
                i32.and
                i32.const 65536
                i32.ge_u
                br_if 3 (;@3;)
              end
              local.get 1
              call $_ZN4core7unicode9printable12is_printable17haa85ac9d86e44d54E
              br_if 1 (;@4;)
              local.get 3
              i32.const 22
              i32.add
              i32.const 2
              i32.add
              i32.const 0
              i32.store8
              local.get 3
              i32.const 0
              i32.store16 offset=22
              local.get 3
              local.get 1
              i32.const 20
              i32.shr_u
              i32.load8_u offset=1062185
              i32.store8 offset=25
              local.get 3
              local.get 1
              i32.const 4
              i32.shr_u
              i32.const 15
              i32.and
              i32.load8_u offset=1062185
              i32.store8 offset=29
              local.get 3
              local.get 1
              i32.const 8
              i32.shr_u
              i32.const 15
              i32.and
              i32.load8_u offset=1062185
              i32.store8 offset=28
              local.get 3
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.load8_u offset=1062185
              i32.store8 offset=27
              local.get 3
              local.get 1
              i32.const 16
              i32.shr_u
              i32.const 15
              i32.and
              i32.load8_u offset=1062185
              i32.store8 offset=26
              local.get 3
              i32.const 22
              i32.add
              local.get 1
              i32.const 1
              i32.or
              i32.clz
              i32.const 2
              i32.shr_u
              local.tee 2
              i32.add
              local.tee 4
              i32.const 123
              i32.store8
              local.get 4
              i32.const -1
              i32.add
              i32.const 117
              i32.store8
              local.get 3
              i32.const 22
              i32.add
              local.get 2
              i32.const -2
              i32.add
              local.tee 2
              i32.add
              i32.const 92
              i32.store8
              local.get 3
              i32.const 22
              i32.add
              i32.const 8
              i32.add
              local.tee 4
              local.get 1
              i32.const 15
              i32.and
              i32.load8_u offset=1062185
              i32.store8
              local.get 0
              local.get 3
              i64.load offset=22 align=2
              i64.store align=1
              local.get 3
              i32.const 125
              i32.store8 offset=31
              local.get 0
              i32.const 8
              i32.add
              local.get 4
              i32.load16_u
              i32.store16 align=1
            end
            i32.const 10
            local.set 1
            br 3 (;@1;)
          end
          local.get 0
          local.get 1
          i32.store
          i32.const 129
          local.set 1
          i32.const 128
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        i64.const 0
        i64.store offset=2 align=2
        local.get 0
        i32.const 8796
        i32.store16
      end
      i32.const 2
      local.set 1
      i32.const 0
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store8 offset=13
    local.get 0
    local.get 2
    i32.store8 offset=12
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3str16slice_error_fail17h77032933714d6380E (type 10) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN4core3str19slice_error_fail_rt17h53d76920bbf5fe4cE
    unreachable)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h25ecbd092e47f48bE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.const 39
      local.get 1
      i32.load offset=4
      local.tee 5
      i32.load offset=16
      local.tee 1
      call_indirect (type 7)
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.load
      i32.const 257
      call $_ZN4core4char7methods22_$LT$impl$u20$char$GT$16escape_debug_ext17h8d08026254b415a7E
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=13
          local.tee 3
          i32.const 129
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 2
          i32.load
          local.get 1
          call_indirect (type 7)
          i32.eqz
          br_if 1 (;@2;)
          i32.const 1
          local.set 3
          br 2 (;@1;)
        end
        local.get 4
        local.get 2
        local.get 2
        i32.load8_u offset=12
        local.tee 0
        i32.add
        local.get 3
        local.get 0
        i32.sub
        local.get 5
        i32.load offset=12
        call_indirect (type 5)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i32.const 39
      local.get 1
      call_indirect (type 7)
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c4f5901684480f0E (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 7))
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hf1c5f67c5aebf90aE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 20
    local.set 3
    local.get 0
    i64.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i64.const 1000
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 20
      local.set 3
      local.get 4
      local.set 6
      loop  ;; label = @2
        local.get 2
        i32.const 12
        i32.add
        local.get 3
        i32.add
        local.tee 0
        i32.const -4
        i32.add
        local.get 6
        local.get 6
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1061985 align=1
        i32.store16 align=1
        local.get 0
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1061985 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 6
        i64.const 9999999
        i64.gt_u
        local.set 0
        local.get 5
        local.set 6
        local.get 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i64.const 9
      i64.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 0
      local.get 0
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1061985 align=1
      i32.store16 align=1
      local.get 0
      i64.extend_i32_u
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i64.eqz
        br_if 0 (;@2;)
        local.get 5
        i64.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 12
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.load8_u offset=1061986
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 12
    i32.add
    local.get 3
    i32.add
    i32.const 20
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 3
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE (type 12) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        local.get 5
        i32.const 1
        i32.add
        local.set 6
        local.get 0
        i32.load offset=8
        local.set 7
        i32.const 45
        local.set 8
        br 1 (;@1;)
      end
      i32.const 43
      i32.const 1114112
      local.get 0
      i32.load offset=8
      local.tee 7
      i32.const 2097152
      i32.and
      local.tee 1
      select
      local.set 8
      local.get 1
      i32.const 21
      i32.shr_u
      local.get 5
      i32.add
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        i32.const 8388608
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call $_ZN4core3str5count14do_count_chars17hb374f1f5e048cfadE
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            i32.const 0
            local.set 10
            br 1 (;@3;)
          end
          local.get 3
          i32.const 12
          i32.and
          local.set 11
          i32.const 0
          local.set 1
          i32.const 0
          local.set 10
          loop  ;; label = @4
            local.get 1
            local.get 2
            local.get 10
            i32.add
            local.tee 12
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 11
            local.get 10
            i32.const 4
            i32.add
            local.tee 10
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 10
        i32.add
        local.set 12
        loop  ;; label = @3
          local.get 1
          local.get 12
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 1
          local.get 12
          i32.const 1
          i32.add
          local.set 12
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 1
      local.get 6
      i32.add
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        local.get 0
        i32.load16_u offset=12
        local.tee 11
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 16777216
              i32.and
              br_if 0 (;@5;)
              local.get 11
              local.get 6
              i32.sub
              local.set 13
              i32.const 0
              local.set 1
              i32.const 0
              local.set 11
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.const 29
                    i32.shr_u
                    i32.const 3
                    i32.and
                    br_table 2 (;@6;) 0 (;@8;) 1 (;@7;) 0 (;@8;) 2 (;@6;)
                  end
                  local.get 13
                  local.set 11
                  br 1 (;@6;)
                end
                local.get 13
                i32.const 65534
                i32.and
                i32.const 1
                i32.shr_u
                local.set 11
              end
              local.get 7
              i32.const 2097151
              i32.and
              local.set 6
              local.get 0
              i32.load offset=4
              local.set 9
              local.get 0
              i32.load
              local.set 10
              loop  ;; label = @6
                local.get 1
                i32.const 65535
                i32.and
                local.get 11
                i32.const 65535
                i32.and
                i32.ge_u
                br_if 2 (;@4;)
                i32.const 1
                local.set 12
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                local.get 10
                local.get 6
                local.get 9
                i32.load offset=16
                call_indirect (type 7)
                i32.eqz
                br_if 0 (;@6;)
                br 5 (;@1;)
              end
            end
            local.get 0
            local.get 0
            i64.load offset=8 align=4
            local.tee 14
            i32.wrap_i64
            i32.const -1612709888
            i32.and
            i32.const 536870960
            i32.or
            i32.store offset=8
            i32.const 1
            local.set 12
            local.get 0
            i32.load
            local.tee 10
            local.get 0
            i32.load offset=4
            local.tee 9
            local.get 8
            local.get 2
            local.get 3
            call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6223f7fb6949aa64E
            br_if 3 (;@1;)
            i32.const 0
            local.set 1
            local.get 11
            local.get 6
            i32.sub
            i32.const 65535
            i32.and
            local.set 2
            loop  ;; label = @5
              local.get 1
              i32.const 65535
              i32.and
              local.get 2
              i32.ge_u
              br_if 2 (;@3;)
              i32.const 1
              local.set 12
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 10
              i32.const 48
              local.get 9
              i32.load offset=16
              call_indirect (type 7)
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          i32.const 1
          local.set 12
          local.get 10
          local.get 9
          local.get 8
          local.get 2
          local.get 3
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6223f7fb6949aa64E
          br_if 2 (;@1;)
          local.get 10
          local.get 4
          local.get 5
          local.get 9
          i32.load offset=12
          call_indirect (type 5)
          br_if 2 (;@1;)
          i32.const 0
          local.set 1
          local.get 13
          local.get 11
          i32.sub
          i32.const 65535
          i32.and
          local.set 0
          loop  ;; label = @4
            local.get 1
            i32.const 65535
            i32.and
            local.tee 2
            local.get 0
            i32.lt_u
            local.set 12
            local.get 2
            local.get 0
            i32.ge_u
            br_if 3 (;@1;)
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 10
            local.get 6
            local.get 9
            i32.load offset=16
            call_indirect (type 7)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 1
        local.set 12
        local.get 10
        local.get 4
        local.get 5
        local.get 9
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 0
        local.get 14
        i64.store offset=8 align=4
        i32.const 0
        return
      end
      i32.const 1
      local.set 12
      local.get 0
      i32.load
      local.tee 1
      local.get 0
      i32.load offset=4
      local.tee 10
      local.get 8
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6223f7fb6949aa64E
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      local.get 5
      local.get 10
      i32.load offset=12
      call_indirect (type 5)
      local.set 12
    end
    local.get 12)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h171595233070c997E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 10
    local.set 3
    local.get 0
    i32.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
      local.get 4
      local.set 0
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1061985 align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1061985 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1061985 align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.load8_u offset=1061986
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h85930e855939b804E (type 5) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17h024b1a340d71718eE)
  (func $_ZN4core3fmt9Formatter3pad17h024b1a340d71718eE (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 268435456
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load16_u offset=14
                  local.tee 4
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 2
                  call $_ZN4core3str5count14do_count_chars17hb374f1f5e048cfadE
                  local.set 5
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  local.get 2
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 2
                  i32.const 0
                  local.set 5
                  br 4 (;@3;)
                end
                local.get 2
                i32.const 3
                i32.and
                local.set 6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const 4
                    i32.ge_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 5
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.const 12
                  i32.and
                  local.set 4
                  i32.const 0
                  local.set 5
                  i32.const 0
                  local.set 7
                  loop  ;; label = @8
                    local.get 5
                    local.get 1
                    local.get 7
                    i32.add
                    local.tee 8
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 8
                    i32.const 1
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 8
                    i32.const 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 8
                    i32.const 3
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 5
                    local.get 4
                    local.get 7
                    i32.const 4
                    i32.add
                    local.tee 7
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 6
                i32.eqz
                br_if 3 (;@3;)
                local.get 1
                local.get 7
                i32.add
                local.set 8
                loop  ;; label = @7
                  local.get 5
                  local.get 8
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 5
                  local.get 8
                  i32.const 1
                  i32.add
                  local.set 8
                  local.get 6
                  i32.const -1
                  i32.add
                  local.tee 6
                  br_if 0 (;@7;)
                  br 4 (;@3;)
                end
              end
              local.get 1
              local.get 2
              i32.add
              local.set 6
              i32.const 0
              local.set 2
              local.get 1
              local.set 8
              local.get 4
              local.set 7
              loop  ;; label = @6
                local.get 8
                local.tee 5
                local.get 6
                i32.eq
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.load8_s
                    local.tee 8
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 2
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 3
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.const 4
                  i32.add
                  local.set 8
                end
                local.get 8
                local.get 5
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 7
                i32.const -1
                i32.add
                local.tee 7
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 7
          end
          local.get 4
          local.get 7
          i32.sub
          local.set 5
        end
        local.get 5
        local.get 0
        i32.load16_u offset=12
        local.tee 8
        i32.ge_u
        br_if 0 (;@2;)
        local.get 8
        local.get 5
        i32.sub
        local.set 9
        i32.const 0
        local.set 5
        i32.const 0
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 29
              i32.shr_u
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 9
            local.set 4
            br 1 (;@3;)
          end
          local.get 9
          i32.const 65534
          i32.and
          i32.const 1
          i32.shr_u
          local.set 4
        end
        local.get 3
        i32.const 2097151
        i32.and
        local.set 6
        local.get 0
        i32.load offset=4
        local.set 7
        local.get 0
        i32.load
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.const 65535
            i32.and
            local.get 4
            i32.const 65535
            i32.and
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 8
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 0
            local.get 6
            local.get 7
            i32.load offset=16
            call_indirect (type 7)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 8
        local.get 0
        local.get 1
        local.get 2
        local.get 7
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        i32.const 0
        local.set 5
        local.get 9
        local.get 4
        i32.sub
        i32.const 65535
        i32.and
        local.set 2
        loop  ;; label = @3
          local.get 5
          i32.const 65535
          i32.and
          local.tee 4
          local.get 2
          i32.lt_u
          local.set 8
          local.get 4
          local.get 2
          i32.ge_u
          br_if 2 (;@1;)
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 0
          local.get 6
          local.get 7
          i32.load offset=16
          call_indirect (type 7)
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.load
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 5)
      local.set 8
    end
    local.get 8)
  (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h0fe9c4e3fea6deb2E (type 7) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1061976
      i32.const 5
      call $_ZN4core3fmt9Formatter3pad17h024b1a340d71718eE
      return
    end
    local.get 1
    i32.const 1061981
    i32.const 4
    call $_ZN4core3fmt9Formatter3pad17h024b1a340d71718eE)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6f5b46b5b26ab007E (type 7) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h024b1a340d71718eE)
  (func $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store16 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 4
    i32.add
    call $_RNvCsj3IbkTTFM3W_7___rustc17rust_begin_unwind
    unreachable)
  (func $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17h6ebde75924a414c0E (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 7
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.eqz
                  br_if 5 (;@2;)
                  local.get 1
                  i32.load8_u
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 3
                  br 6 (;@1;)
                end
                local.get 1
                i32.const 3
                i32.add
                i32.const -4
                i32.and
                local.tee 4
                local.get 1
                i32.eq
                br_if 1 (;@5;)
                local.get 4
                local.get 1
                i32.sub
                local.set 4
                i32.const 0
                local.set 3
                loop  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.add
                  i32.load8_u
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 4
                  local.get 3
                  i32.const 1
                  i32.add
                  local.tee 3
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 4
                local.get 2
                i32.const -8
                i32.add
                local.tee 5
                i32.gt_u
                br_if 3 (;@3;)
                br 2 (;@4;)
              end
              i32.const 1
              local.set 3
              local.get 2
              i32.const 1
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=1
              i32.eqz
              br_if 4 (;@1;)
              i32.const 2
              local.set 3
              local.get 2
              i32.const 2
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=2
              i32.eqz
              br_if 4 (;@1;)
              i32.const 3
              local.set 3
              local.get 2
              i32.const 3
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=3
              i32.eqz
              br_if 4 (;@1;)
              i32.const 4
              local.set 3
              local.get 2
              i32.const 4
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=4
              i32.eqz
              br_if 4 (;@1;)
              i32.const 5
              local.set 3
              local.get 2
              i32.const 5
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=5
              i32.eqz
              br_if 4 (;@1;)
              i32.const 6
              local.set 3
              local.get 2
              i32.const 6
              i32.eq
              br_if 3 (;@2;)
              local.get 1
              i32.load8_u offset=6
              br_if 3 (;@2;)
              br 4 (;@1;)
            end
            local.get 2
            i32.const -8
            i32.add
            local.set 5
            i32.const 0
            local.set 4
          end
          loop  ;; label = @4
            i32.const 16843008
            local.get 1
            local.get 4
            i32.add
            local.tee 3
            i32.load
            local.tee 6
            i32.sub
            local.get 6
            i32.or
            i32.const 16843008
            local.get 3
            i32.const 4
            i32.add
            i32.load
            local.tee 3
            i32.sub
            local.get 3
            i32.or
            i32.and
            i32.const -2139062144
            i32.and
            i32.const -2139062144
            i32.ne
            br_if 1 (;@3;)
            local.get 4
            i32.const 8
            i32.add
            local.tee 4
            local.get 5
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 4
        i32.eq
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            br_if 0 (;@4;)
            local.get 4
            local.set 3
            br 3 (;@1;)
          end
          local.get 2
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const 1
      i32.store offset=4
      local.get 0
      i32.const 1
      i32.store
      return
    end
    block  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.get 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 1
      i32.store
      return
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN4core3str8converts9from_utf817h41fef7c23fe7ae34E (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.const -7
      i32.add
      local.tee 3
      local.get 3
      local.get 2
      i32.gt_u
      select
      local.set 4
      local.get 1
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      local.get 1
      i32.sub
      local.set 5
      i32.const 0
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                local.tee 6
                i32.extend8_s
                local.tee 7
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 5
                local.get 3
                i32.sub
                i32.const 3
                i32.and
                br_if 1 (;@5;)
                local.get 3
                local.get 4
                i32.ge_u
                br_if 2 (;@4;)
                loop  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.add
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  local.get 6
                  i32.load
                  i32.or
                  i32.const -2139062144
                  i32.and
                  br_if 3 (;@4;)
                  local.get 3
                  i32.const 8
                  i32.add
                  local.tee 3
                  local.get 4
                  i32.lt_u
                  br_if 0 (;@7;)
                  br 3 (;@4;)
                end
              end
              i64.const 1099511627776
              local.set 8
              i64.const 4294967296
              local.set 9
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 6
                                      i32.load8_u offset=1062263
                                      i32.const -2
                                      i32.add
                                      br_table 0 (;@17;) 1 (;@16;) 2 (;@15;) 10 (;@7;)
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 6
                                    local.get 2
                                    i32.lt_u
                                    br_if 2 (;@14;)
                                    i64.const 0
                                    local.set 8
                                    i64.const 0
                                    local.set 9
                                    br 9 (;@7;)
                                  end
                                  i64.const 0
                                  local.set 8
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 10
                                  local.get 2
                                  i32.lt_u
                                  br_if 2 (;@13;)
                                  i64.const 0
                                  local.set 9
                                  br 8 (;@7;)
                                end
                                i64.const 0
                                local.set 8
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 10
                                local.get 2
                                i32.lt_u
                                br_if 2 (;@12;)
                                i64.const 0
                                local.set 9
                                br 7 (;@7;)
                              end
                              i64.const 1099511627776
                              local.set 8
                              i64.const 4294967296
                              local.set 9
                              local.get 1
                              local.get 6
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.gt_s
                              br_if 6 (;@7;)
                              br 7 (;@6;)
                            end
                            local.get 1
                            local.get 10
                            i32.add
                            i32.load8_s
                            local.set 10
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.const -224
                                  i32.add
                                  br_table 0 (;@15;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 1 (;@14;) 2 (;@13;)
                                end
                                local.get 10
                                i32.const -32
                                i32.and
                                i32.const -96
                                i32.eq
                                br_if 4 (;@10;)
                                br 3 (;@11;)
                              end
                              local.get 10
                              i32.const -97
                              i32.gt_s
                              br_if 2 (;@11;)
                              br 3 (;@10;)
                            end
                            block  ;; label = @13
                              local.get 7
                              i32.const 31
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 12
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const -2
                              i32.and
                              i32.const -18
                              i32.ne
                              br_if 2 (;@11;)
                              local.get 10
                              i32.const -64
                              i32.lt_s
                              br_if 3 (;@10;)
                              br 2 (;@11;)
                            end
                            local.get 10
                            i32.const -64
                            i32.lt_s
                            br_if 2 (;@10;)
                            br 1 (;@11;)
                          end
                          local.get 1
                          local.get 10
                          i32.add
                          i32.load8_s
                          local.set 10
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.const -240
                                  i32.add
                                  br_table 1 (;@14;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 2 (;@13;) 0 (;@15;)
                                end
                                local.get 7
                                i32.const 15
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 2
                                i32.gt_u
                                br_if 3 (;@11;)
                                local.get 10
                                i32.const -64
                                i32.ge_s
                                br_if 3 (;@11;)
                                br 2 (;@12;)
                              end
                              local.get 10
                              i32.const 112
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 48
                              i32.ge_u
                              br_if 2 (;@11;)
                              br 1 (;@12;)
                            end
                            local.get 10
                            i32.const -113
                            i32.gt_s
                            br_if 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 3
                            i32.const 2
                            i32.add
                            local.tee 6
                            local.get 2
                            i32.lt_u
                            br_if 0 (;@12;)
                            i64.const 0
                            local.set 9
                            br 5 (;@7;)
                          end
                          local.get 1
                          local.get 6
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.gt_s
                          br_if 2 (;@9;)
                          i64.const 0
                          local.set 9
                          local.get 3
                          i32.const 3
                          i32.add
                          local.tee 6
                          local.get 2
                          i32.ge_u
                          br_if 4 (;@7;)
                          local.get 1
                          local.get 6
                          i32.add
                          i32.load8_s
                          i32.const -64
                          i32.lt_s
                          br_if 5 (;@6;)
                          i64.const 3298534883328
                          local.set 8
                          br 3 (;@8;)
                        end
                        i64.const 1099511627776
                        local.set 8
                        br 2 (;@8;)
                      end
                      i64.const 0
                      local.set 9
                      local.get 3
                      i32.const 2
                      i32.add
                      local.tee 6
                      local.get 2
                      i32.ge_u
                      br_if 2 (;@7;)
                      local.get 1
                      local.get 6
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 3 (;@6;)
                    end
                    i64.const 2199023255552
                    local.set 8
                  end
                  i64.const 4294967296
                  local.set 9
                end
                local.get 0
                local.get 8
                local.get 3
                i64.extend_i32_u
                i64.or
                local.get 9
                i64.or
                i64.store offset=4 align=4
                local.get 0
                i32.const 1
                i32.store
                return
              end
              local.get 6
              i32.const 1
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.ge_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 3
            i32.add
            i32.load8_s
            i32.const 0
            i32.lt_s
            br_if 1 (;@3;)
            local.get 2
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.ne
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN4core9panicking18panic_bounds_check17h882a92523bf8b0acE (type 4) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1064668
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17ha0ecce11a8029d70E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 3
    local.set 3
    local.get 0
    i32.load8_u
    local.tee 0
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.const 10
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 1
      local.set 3
      local.get 2
      local.get 0
      local.get 0
      i32.const 100
      i32.div_u
      local.tee 4
      i32.const 100
      i32.mul
      i32.sub
      i32.const 255
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1061985 align=1
      i32.store16 offset=14 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 13
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 4
      i32.const 1
      i32.shl
      i32.load8_u offset=1061986
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 13
    i32.add
    local.get 3
    i32.add
    i32.const 3
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h0272aba55a44dca6E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 10
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 4
        local.get 4
        i32.const 31
        i32.shr_s
        local.tee 0
        i32.xor
        local.get 0
        i32.sub
        local.tee 0
        i32.const 1000
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 10
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.load16_u offset=1061985 align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.load16_u offset=1061985 align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.load16_u offset=1061985 align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.load8_u offset=1061986
      i32.store8
    end
    local.get 1
    local.get 4
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h401b721a1e3cc1edE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      i32.const 14
      i32.add
      local.get 0
      i32.add
      i32.const 1
      i32.add
      local.get 3
      i32.const 15
      i32.and
      i32.const 1062185
      i32.add
      i32.load8_u
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 1062201
    i32.const 2
    local.get 2
    i32.const 14
    i32.add
    local.get 0
    i32.add
    i32.const 2
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h859f180d3c7d1af8E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      i32.const 14
      i32.add
      local.get 0
      i32.add
      i32.const 1
      i32.add
      local.get 3
      i32.const 15
      i32.and
      i32.const 1062203
      i32.add
      i32.load8_u
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 15
      i32.gt_u
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 1062201
    i32.const 2
    local.get 2
    i32.const 14
    i32.add
    local.get 0
    i32.add
    i32.const 2
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hbb46a9202f802e5dE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.add
      i32.const 7
      i32.add
      local.get 0
      i32.const 15
      i32.and
      i32.load8_u offset=1062185
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 1062201
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h830d7118f4bd1e0fE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.add
      i32.const 7
      i32.add
      local.get 0
      i32.const 15
      i32.and
      i32.load8_u offset=1062185
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 1062201
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h1a29f44be947af21E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.add
      i32.const 7
      i32.add
      local.get 0
      i32.const 15
      i32.and
      i32.load8_u offset=1062203
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 1062201
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h4dc0100f6123bafdE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.add
      i32.const 7
      i32.add
      local.get 0
      i32.const 15
      i32.and
      i32.load8_u offset=1062203
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 15
      i32.gt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 1
    i32.const 1062201
    i32.const 2
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    i32.add
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE (type 6) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 2
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        local.get 3
        call $_ZN4core5slice5index16slice_index_fail8do_panic7runtime17h79a5e6d91d77693dE
        unreachable
      end
      local.get 0
      local.get 2
      local.get 3
      call $_ZN4core5slice5index16slice_index_fail8do_panic7runtime17h98616bf605a3f5b2E
      unreachable
    end
    local.get 1
    local.get 2
    local.get 3
    call $_ZN4core5slice5index16slice_index_fail8do_panic7runtime17hbb44f8aa8e2d7d68E
    unreachable)
  (func $_ZN4core3fmt5write17h73319cf8ac237dc9E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i64.const 3758096416
    i64.store offset=8 align=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              local.tee 1
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 2
            i32.load offset=12
            local.tee 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=8
            local.tee 1
            local.get 0
            i32.const 3
            i32.shl
            local.tee 0
            i32.add
            local.set 5
            local.get 0
            i32.const -8
            i32.add
            i32.const 3
            i32.shr_u
            i32.const 1
            i32.add
            local.set 6
            local.get 2
            i32.load
            local.set 0
            loop  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load
                local.get 0
                i32.load
                local.get 7
                local.get 3
                i32.load offset=4
                i32.load offset=12
                call_indirect (type 5)
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 1
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 1
                i32.load
                local.get 3
                local.get 1
                i32.const 4
                i32.add
                i32.load
                call_indirect (type 7)
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 1
                br 5 (;@1;)
              end
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.tee 1
              local.get 5
              i32.eq
              br_if 3 (;@2;)
              br 0 (;@5;)
            end
          end
          local.get 1
          i32.const 24
          i32.mul
          local.set 8
          local.get 1
          i32.const -1
          i32.add
          i32.const 536870911
          i32.and
          i32.const 1
          i32.add
          local.set 6
          local.get 2
          i32.load offset=8
          local.set 9
          local.get 2
          i32.load
          local.set 0
          i32.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load
              local.get 0
              i32.load
              local.get 1
              local.get 3
              i32.load offset=4
              i32.load offset=12
              call_indirect (type 5)
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              local.set 1
              br 4 (;@1;)
            end
            i32.const 0
            local.set 5
            i32.const 0
            local.set 10
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  local.get 7
                  i32.add
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.load16_u
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 10
                i32.add
                i32.load16_u
                local.set 10
                br 1 (;@5;)
              end
              local.get 9
              local.get 1
              i32.const 12
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 10
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load16_u
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 2
                i32.add
                i32.load16_u
                local.set 5
                br 1 (;@5;)
              end
              local.get 9
              local.get 1
              i32.const 4
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 5
            end
            local.get 3
            local.get 5
            i32.store16 offset=14
            local.get 3
            local.get 10
            i32.store16 offset=12
            local.get 3
            local.get 1
            i32.const 20
            i32.add
            i32.load
            i32.store offset=8
            block  ;; label = @5
              local.get 9
              local.get 1
              i32.const 16
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              local.get 1
              i32.load offset=4
              call_indirect (type 7)
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              local.set 1
              br 4 (;@1;)
            end
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            local.get 8
            local.get 7
            i32.const 24
            i32.add
            local.tee 7
            i32.eq
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.set 6
      end
      block  ;; label = @2
        local.get 6
        local.get 2
        i32.load offset=4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        i32.load
        local.get 2
        i32.load
        local.get 6
        i32.const 3
        i32.shl
        i32.add
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 3
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17he781aec646248d6aE (type 7) (param i32 i32) (result i32)
    local.get 0
    i32.const 1062228
    local.get 1
    call $_ZN4core3fmt5write17h73319cf8ac237dc9E)
  (func $_ZN4core9panicking5panic17h5e6be1da2ab43190E (type 4) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 1
    i32.store offset=4
    local.get 3
    i64.const 4
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4b00922137b93533E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -1
    i32.add
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 0
    i32.load offset=8
    local.set 6
    i32.const 0
    local.set 7
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    i32.const 0
    local.set 10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 10
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 9
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              local.get 9
              i32.add
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          local.get 9
                          i32.sub
                          local.tee 11
                          i32.const 7
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 2
                          local.get 9
                          i32.ne
                          br_if 1 (;@10;)
                          local.get 2
                          local.set 9
                          br 7 (;@4;)
                        end
                        local.get 10
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee 0
                        local.get 10
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 0
                        local.get 10
                        i32.sub
                        local.set 0
                        i32.const 0
                        local.set 12
                        loop  ;; label = @11
                          local.get 10
                          local.get 12
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 0
                          local.get 12
                          i32.const 1
                          i32.add
                          local.tee 12
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 0
                        local.get 11
                        i32.const -8
                        i32.add
                        local.tee 13
                        i32.gt_u
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      i32.const 0
                      local.set 12
                      loop  ;; label = @10
                        local.get 10
                        local.get 12
                        i32.add
                        i32.load8_u
                        i32.const 10
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 11
                        local.get 12
                        i32.const 1
                        i32.add
                        local.tee 12
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      local.set 9
                      br 5 (;@4;)
                    end
                    local.get 11
                    i32.const -8
                    i32.add
                    local.set 13
                    i32.const 0
                    local.set 0
                  end
                  loop  ;; label = @8
                    i32.const 16843008
                    local.get 10
                    local.get 0
                    i32.add
                    local.tee 12
                    i32.load
                    local.tee 14
                    i32.const 168430090
                    i32.xor
                    i32.sub
                    local.get 14
                    i32.or
                    i32.const 16843008
                    local.get 12
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 12
                    i32.const 168430090
                    i32.xor
                    i32.sub
                    local.get 12
                    i32.or
                    i32.and
                    i32.const -2139062144
                    i32.and
                    i32.const -2139062144
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 0
                    i32.const 8
                    i32.add
                    local.tee 0
                    local.get 13
                    i32.le_u
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 11
                  local.get 0
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 9
                  br 3 (;@4;)
                end
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 10
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 0
                    local.set 12
                    br 2 (;@6;)
                  end
                  local.get 11
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 0
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 2
                local.set 9
                br 2 (;@4;)
              end
              local.get 9
              local.get 12
              i32.add
              local.tee 0
              i32.const 1
              i32.add
              local.set 9
              block  ;; label = @6
                local.get 0
                local.get 2
                i32.ge_u
                br_if 0 (;@6;)
                local.get 10
                local.get 12
                i32.add
                i32.load8_u
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 10
                local.get 9
                local.set 11
                local.get 9
                local.set 0
                br 3 (;@3;)
              end
              local.get 2
              local.get 9
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          local.get 8
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 10
          local.get 8
          local.set 11
          local.get 2
          local.set 0
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 1064854
            i32.const 4
            local.get 4
            i32.load offset=12
            call_indirect (type 5)
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.sub
          local.set 14
          i32.const 0
          local.set 12
          block  ;; label = @4
            local.get 0
            local.get 8
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
            local.set 12
          end
          local.get 1
          local.get 8
          i32.add
          local.set 0
          local.get 6
          local.get 12
          i32.store8
          local.get 11
          local.set 8
          local.get 5
          local.get 0
          local.get 14
          local.get 4
          i32.load offset=12
          call_indirect (type 5)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 7
    end
    local.get 7)
  (func $_ZN4core3fmt8builders10DebugTuple5field17h2e8203dc36e59b28E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 4
    i32.const 1
    local.set 5
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=8
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 6
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 6
        i32.load
        i32.const 1062219
        i32.const 1062223
        local.get 4
        select
        i32.const 2
        i32.const 1
        local.get 4
        select
        local.get 6
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        local.get 2
        i32.load offset=12
        call_indirect (type 7)
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 6
        i32.load
        i32.const 1062224
        i32.const 2
        local.get 6
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 5
      local.get 3
      i32.const 1
      i32.store8 offset=15
      local.get 3
      i32.const 1062228
      i32.store offset=20
      local.get 3
      local.get 6
      i64.load align=4
      i64.store align=4
      local.get 3
      local.get 6
      i64.load offset=8 align=4
      i64.store offset=24 align=4
      local.get 3
      local.get 3
      i32.const 15
      i32.add
      i32.store offset=8
      local.get 3
      local.get 3
      i32.store offset=16
      local.get 1
      local.get 3
      i32.const 16
      i32.add
      local.get 2
      i32.load offset=12
      call_indirect (type 7)
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=16
      i32.const 1062221
      i32.const 2
      local.get 3
      i32.load offset=20
      i32.load offset=12
      call_indirect (type 5)
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store8 offset=8
    local.get 0
    local.get 4
    i32.const 1
    i32.add
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt8builders10DebugTuple6finish17ha92b97ab0af0fddcE (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load8_u offset=8
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        br_if 0 (;@2;)
        local.get 1
        local.set 3
        br 1 (;@1;)
      end
      i32.const 1
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.set 1
          local.get 2
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.load8_u offset=9
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u offset=10
          i32.const 128
          i32.and
          br_if 1 (;@2;)
          i32.const 1
          local.set 3
          local.get 1
          i32.load
          i32.const 1062227
          i32.const 1
          local.get 1
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 5)
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 3
        i32.store8 offset=8
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.load
      i32.const 1062226
      i32.const 1
      local.get 1
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 5)
      local.tee 3
      i32.store8 offset=8
    end
    local.get 3
    i32.const 1
    i32.and)
  (func $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 8
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load
        i32.const 1062219
        i32.const 1062252
        local.get 7
        i32.const 1
        i32.and
        local.tee 7
        select
        i32.const 2
        i32.const 3
        local.get 7
        select
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 8
        i32.load
        i32.const 1062255
        i32.const 2
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        i32.load offset=12
        call_indirect (type 7)
        local.set 6
        br 1 (;@1;)
      end
      i32.const 1
      local.set 6
      block  ;; label = @2
        local.get 7
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.load
        i32.const 1062257
        i32.const 3
        local.get 8
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=15
      local.get 5
      i32.const 1062228
      i32.store offset=20
      local.get 5
      local.get 8
      i64.load align=4
      i64.store align=4
      local.get 5
      local.get 8
      i64.load offset=8 align=4
      i64.store offset=24 align=4
      local.get 5
      local.get 5
      i32.const 15
      i32.add
      i32.store offset=8
      local.get 5
      local.get 5
      i32.store offset=16
      local.get 5
      local.get 1
      local.get 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4b00922137b93533E
      br_if 0 (;@1;)
      local.get 5
      i32.const 1062255
      i32.const 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4b00922137b93533E
      br_if 0 (;@1;)
      local.get 3
      local.get 5
      i32.const 16
      i32.add
      local.get 4
      i32.load offset=12
      call_indirect (type 7)
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=16
      i32.const 1062221
      i32.const 2
      local.get 5
      i32.load offset=20
      i32.load offset=12
      call_indirect (type 5)
      local.set 6
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 6
    i32.store8 offset=4
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt8builders11DebugStruct6finish17ha01ab58e9b17d37cE (type 3) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load8_u offset=4
    local.tee 1
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=5
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          i32.load8_u offset=10
          i32.const 128
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.load
          i32.const 1062261
          i32.const 2
          local.get 2
          i32.load offset=4
          i32.load offset=12
          call_indirect (type 5)
          local.set 2
          br 1 (;@2;)
        end
        local.get 2
        i32.load
        i32.const 1062260
        i32.const 1
        local.get 2
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        local.set 2
      end
      local.get 0
      local.get 2
      i32.store8 offset=4
    end
    local.get 2
    i32.const 1
    i32.and)
  (func $_ZN4core3fmt9Formatter11debug_tuple17h406300e8cccc9575E (type 6) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load
    local.get 2
    local.get 3
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 5)
    i32.store8 offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.eqz
    i32.store8 offset=9
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN4core3fmt9Formatter12debug_struct17h4ddcfc121ab1e68dE (type 6) (param i32 i32 i32 i32)
    local.get 1
    i32.load
    local.get 2
    local.get 3
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 5)
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=5
    local.get 0
    local.get 3
    i32.store8 offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h6223f7fb6949aa64E (type 11) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 7)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN4core3str5count14do_count_chars17hb374f1f5e048cfadE (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 3
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.sub
        local.tee 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 3
        i32.and
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 1
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          i32.const 0
          local.set 7
          block  ;; label = @4
            local.get 0
            local.get 2
            i32.sub
            local.tee 8
            i32.const -4
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            i32.const 0
            local.set 7
            loop  ;; label = @5
              local.get 1
              local.get 0
              local.get 7
              i32.add
              local.tee 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 7
              i32.const 4
              i32.add
              local.tee 7
              br_if 0 (;@5;)
            end
          end
          local.get 0
          local.get 7
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 8
            i32.const 1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 3
        i32.add
        local.set 8
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 4
          i32.const -4
          i32.and
          i32.add
          local.tee 2
          i32.load8_s
          i32.const -65
          i32.gt_s
          local.set 6
          local.get 5
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
        end
        local.get 4
        i32.const 2
        i32.shr_u
        local.set 3
        local.get 6
        local.get 1
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 8
          local.set 4
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 192
          local.get 3
          i32.const 192
          i32.lt_u
          select
          local.tee 6
          i32.const 3
          i32.and
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 2
              i32.shl
              local.tee 9
              i32.const 1008
              i32.and
              local.tee 1
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 4
            local.get 1
            i32.add
            local.set 0
            i32.const 0
            local.set 2
            local.get 4
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.tee 8
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 8
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.const 8
              i32.add
              i32.load
              local.tee 8
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 8
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 8
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 8
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.load
              local.tee 8
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 8
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 1
              i32.const 16
              i32.add
              local.tee 1
              local.get 0
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 6
          i32.sub
          local.set 3
          local.get 4
          local.get 9
          i32.add
          local.set 8
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 7
          i32.add
          local.set 7
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 4
        local.get 6
        i32.const 252
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee 2
        i32.load
        local.tee 1
        i32.const -1
        i32.xor
        i32.const 7
        i32.shr_u
        local.get 1
        i32.const 6
        i32.shr_u
        i32.or
        i32.const 16843009
        i32.and
        local.set 1
        block  ;; label = @3
          local.get 5
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          local.tee 8
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 8
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=8
          local.tee 2
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 2
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
        end
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 459007
        i32.and
        local.get 1
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 7
        i32.add
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 7
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const -4
        i32.and
        local.set 3
        i32.const 0
        local.set 7
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 7
          local.get 0
          local.get 2
          i32.add
          local.tee 1
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 1
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 2
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 3
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 7
          local.get 3
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 7
        local.get 1
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 7
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 8
        i32.const -1
        i32.add
        local.tee 8
        br_if 0 (;@2;)
      end
    end
    local.get 7)
  (func $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h3742e6e3b4c73cd5E (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 7
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      local.tee 8
      i32.load offset=12
      local.tee 9
      call_indirect (type 5)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=10
          i32.const 128
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 6
          local.get 7
          i32.const 1062223
          i32.const 1
          local.get 9
          call_indirect (type 5)
          br_if 2 (;@1;)
          local.get 3
          local.get 0
          local.get 4
          i32.load offset=12
          call_indirect (type 7)
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 7
        i32.const 1062224
        i32.const 2
        local.get 9
        call_indirect (type 5)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 5
        i32.const 1
        i32.store8 offset=15
        local.get 5
        local.get 8
        i32.store offset=4
        local.get 5
        local.get 7
        i32.store
        local.get 5
        i32.const 1062228
        i32.store offset=20
        local.get 5
        local.get 0
        i64.load offset=8 align=4
        i64.store offset=24 align=4
        local.get 5
        local.get 5
        i32.const 15
        i32.add
        i32.store offset=8
        local.get 5
        local.get 5
        i32.store offset=16
        local.get 3
        local.get 5
        i32.const 16
        i32.add
        local.get 4
        i32.load offset=12
        call_indirect (type 7)
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=16
        i32.const 1062221
        i32.const 2
        local.get 5
        i32.load offset=20
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 0
        i32.load
        i32.const 1062227
        i32.const 1
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load
      i32.const 1062226
      i32.const 1
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 5)
      local.set 6
    end
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h1c1b4b20db9bf964E (type 13) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 11
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 5)
    local.set 2
    local.get 11
    i32.const 0
    i32.store8 offset=13
    local.get 11
    local.get 2
    i32.store8 offset=12
    local.get 11
    local.get 0
    i32.store offset=8
    local.get 11
    i32.const 8
    i32.add
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E
    local.get 7
    local.get 8
    local.get 9
    local.get 10
    call $_ZN4core3fmt8builders11DebugStruct5field17hd8860d6eb70087f3E
    local.set 10
    local.get 11
    i32.load8_u offset=13
    local.tee 2
    local.get 11
    i32.load8_u offset=12
    local.tee 1
    i32.or
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 10
        i32.load
        local.tee 0
        i32.load8_u offset=10
        i32.const 128
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load
        i32.const 1062261
        i32.const 2
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      i32.const 1062260
      i32.const 1
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 5)
      local.set 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 1
    i32.and)
  (func $_ZN4core3fmt9Formatter9write_str17h93e999e5be78c0f5E (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN4core3str19slice_error_fail_rt17h53d76920bbf5fe4cE (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 3
    i32.store offset=12
    local.get 5
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 257
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 253
                local.set 6
                loop  ;; label = @7
                  local.get 0
                  local.get 6
                  i32.add
                  local.tee 7
                  i32.const 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  br_if 3 (;@4;)
                  local.get 7
                  i32.const 2
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  br_if 2 (;@5;)
                  local.get 7
                  i32.const 1
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  br_if 4 (;@3;)
                  local.get 7
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  br_if 5 (;@2;)
                  local.get 6
                  i32.const -4
                  i32.add
                  local.tee 6
                  i32.const -3
                  i32.ne
                  br_if 0 (;@7;)
                end
                i32.const 0
                local.set 6
                br 4 (;@2;)
              end
              local.get 5
              local.get 1
              i32.store offset=20
              local.get 5
              local.get 0
              i32.store offset=16
              i32.const 0
              local.set 7
              i32.const 1
              local.set 6
              br 4 (;@1;)
            end
            local.get 6
            i32.const 2
            i32.add
            local.set 6
            br 2 (;@2;)
          end
          local.get 6
          i32.const 3
          i32.add
          local.set 6
          br 1 (;@2;)
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 6
      end
      local.get 5
      local.get 0
      i32.store offset=16
      local.get 5
      local.get 6
      i32.store offset=20
      i32.const 5
      i32.const 0
      local.get 6
      local.get 1
      i32.lt_u
      local.tee 6
      select
      local.set 7
      i32.const 1062519
      i32.const 1
      local.get 6
      select
      local.set 6
    end
    local.get 5
    local.get 7
    i32.store offset=28
    local.get 5
    local.get 6
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        local.get 1
        i32.le_u
        br_if 1 (;@1;)
        local.get 3
        local.set 2
      end
      local.get 5
      local.get 2
      i32.store offset=40
      local.get 5
      i32.const 3
      i32.store offset=52
      local.get 5
      i32.const 1062720
      i32.store offset=48
      local.get 5
      i64.const 3
      i64.store offset=60 align=4
      local.get 5
      i32.const 63
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 8
      local.get 5
      i32.const 24
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=88
      local.get 5
      local.get 8
      local.get 5
      i32.const 16
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=80
      local.get 5
      i32.const 6
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 5
      i32.const 40
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=72
      local.get 5
      local.get 5
      i32.const 72
      i32.add
      i32.store offset=56
      local.get 5
      i32.const 48
      i32.add
      local.get 4
      call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
      unreachable
    end
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 5
        i32.const 12
        i32.add
        local.get 5
        i32.const 8
        i32.add
        local.get 0
        local.get 2
        i32.add
        i32.load8_s
        i32.const -65
        i32.gt_s
        select
        i32.load
        local.set 3
      end
      local.get 5
      local.get 3
      i32.store offset=32
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 3
                  local.set 7
                  br 2 (;@5;)
                end
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 7
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 7
                  i32.add
                  local.tee 0
                  i32.load8_s
                  local.tee 6
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 3
                  local.get 6
                  i32.const 31
                  i32.and
                  local.set 1
                  local.get 6
                  i32.const -33
                  i32.gt_u
                  br_if 1 (;@6;)
                  local.get 1
                  i32.const 6
                  i32.shl
                  local.get 3
                  i32.or
                  local.set 6
                  br 2 (;@5;)
                end
                local.get 5
                local.get 6
                i32.const 255
                i32.and
                i32.store offset=36
                i32.const 1
                local.set 6
                br 4 (;@2;)
              end
              local.get 3
              i32.const 6
              i32.shl
              local.get 0
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.or
              local.set 3
              block  ;; label = @6
                local.get 6
                i32.const -16
                i32.ge_u
                br_if 0 (;@6;)
                local.get 3
                local.get 1
                i32.const 12
                i32.shl
                i32.or
                local.set 6
                br 1 (;@5;)
              end
              local.get 3
              i32.const 6
              i32.shl
              local.get 0
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 1
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              local.tee 6
              i32.const 1114112
              i32.eq
              br_if 1 (;@4;)
            end
            local.get 5
            local.get 6
            i32.store offset=36
            local.get 6
            i32.const 128
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 6
            br 2 (;@2;)
          end
          local.get 4
          call $_ZN4core6option13unwrap_failed17h4201e3fa52b09e6aE
          unreachable
        end
        block  ;; label = @3
          local.get 6
          i32.const 2048
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 2
          local.set 6
          br 1 (;@2;)
        end
        i32.const 3
        i32.const 4
        local.get 6
        i32.const 65536
        i32.lt_u
        select
        local.set 6
      end
      local.get 5
      local.get 7
      i32.store offset=40
      local.get 5
      local.get 6
      local.get 7
      i32.add
      i32.store offset=44
      local.get 5
      i32.const 5
      i32.store offset=52
      local.get 5
      i32.const 1062656
      i32.store offset=48
      local.get 5
      i64.const 5
      i64.store offset=60 align=4
      local.get 5
      i32.const 63
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 8
      local.get 5
      i32.const 24
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=104
      local.get 5
      local.get 8
      local.get 5
      i32.const 16
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=96
      local.get 5
      i32.const 64
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 5
      i32.const 40
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=88
      local.get 5
      i32.const 65
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 5
      i32.const 36
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=80
      local.get 5
      i32.const 6
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 5
      i32.const 32
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=72
      local.get 5
      local.get 5
      i32.const 72
      i32.add
      i32.store offset=56
      local.get 5
      i32.const 48
      i32.add
      local.get 4
      call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
      unreachable
    end
    local.get 5
    i32.const 4
    i32.store offset=52
    local.get 5
    i32.const 1062560
    i32.store offset=48
    local.get 5
    i64.const 4
    i64.store offset=60 align=4
    local.get 5
    i32.const 63
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 8
    local.get 5
    i32.const 24
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=96
    local.get 5
    local.get 8
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=88
    local.get 5
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 8
    local.get 5
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=80
    local.get 5
    local.get 8
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=72
    local.get 5
    local.get 5
    i32.const 72
    i32.add
    i32.store offset=56
    local.get 5
    i32.const 48
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN4core6option13unwrap_failed17h4201e3fa52b09e6aE (type 0) (param i32)
    i32.const 1062936
    i32.const 43
    local.get 0
    call $_ZN4core9panicking5panic17h5e6be1da2ab43190E
    unreachable)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h99a726fac8bbe808E (type 7) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 3
            i32.const 33554432
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 67108864
            i32.and
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h171595233070c997E
            i32.eqz
            br_if 2 (;@2;)
            i32.const 1
            local.set 3
            br 3 (;@1;)
          end
          local.get 0
          i32.load
          local.set 3
          i32.const 0
          local.set 4
          loop  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            i32.add
            i32.const 7
            i32.add
            local.get 3
            i32.const 15
            i32.and
            i32.load8_u offset=1062185
            i32.store8
            local.get 4
            i32.const -1
            i32.add
            local.set 4
            local.get 3
            i32.const 16
            i32.lt_u
            local.set 5
            local.get 3
            i32.const 4
            i32.shr_u
            local.set 3
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          local.set 3
          local.get 1
          i32.const 1
          i32.const 1062201
          i32.const 2
          local.get 2
          i32.const 8
          i32.add
          local.get 4
          i32.add
          i32.const 8
          i32.add
          i32.const 0
          local.get 4
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.set 3
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 4
          i32.add
          i32.const 7
          i32.add
          local.get 3
          i32.const 15
          i32.and
          i32.load8_u offset=1062203
          i32.store8
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 15
          i32.gt_u
          local.set 5
          local.get 3
          i32.const 4
          i32.shr_u
          local.set 3
          local.get 5
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 3
        local.get 1
        i32.const 1
        i32.const 1062201
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        local.get 4
        i32.add
        i32.const 8
        i32.add
        i32.const 0
        local.get 4
        i32.sub
        call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.load
        i32.const 1064828
        i32.const 2
        local.get 1
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 5)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          local.tee 4
          i32.const 33554432
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.const 67108864
          i32.and
          br_if 1 (;@2;)
          local.get 3
          local.get 1
          call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h171595233070c997E
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        i32.load
        local.set 3
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 4
          i32.add
          i32.const 7
          i32.add
          local.get 3
          i32.const 15
          i32.and
          i32.load8_u offset=1062185
          i32.store8
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 3
          i32.const 15
          i32.gt_u
          local.set 5
          local.get 3
          i32.const 4
          i32.shr_u
          local.set 3
          local.get 5
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 1
        i32.const 1062201
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        local.get 4
        i32.add
        i32.const 8
        i32.add
        i32.const 0
        local.get 4
        i32.sub
        call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
        local.set 3
        br 1 (;@1;)
      end
      local.get 3
      i32.load
      local.set 3
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 4
        i32.add
        i32.const 7
        i32.add
        local.get 3
        i32.const 15
        i32.and
        i32.load8_u offset=1062203
        i32.store8
        local.get 4
        i32.const -1
        i32.add
        local.set 4
        local.get 3
        i32.const 15
        i32.gt_u
        local.set 5
        local.get 3
        i32.const 4
        i32.shr_u
        local.set 3
        local.get 5
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.const 1062201
      i32.const 2
      local.get 2
      i32.const 8
      i32.add
      local.get 4
      i32.add
      i32.const 8
      i32.add
      i32.const 0
      local.get 4
      i32.sub
      call $_ZN4core3fmt9Formatter12pad_integral17h742d2814e492d6ddE
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN4core4cell22panic_already_borrowed17h9e16ee2a0e05415dE (type 0) (param i32)
    local.get 0
    call $_ZN4core4cell22panic_already_borrowed8do_panic7runtime17hed93a2b34531707eE
    unreachable)
  (func $_ZN4core4cell22panic_already_borrowed8do_panic7runtime17hed93a2b34531707eE (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1062744
    i32.store offset=8
    local.get 1
    i64.const 1
    i64.store offset=20 align=4
    local.get 1
    i32.const 66
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 47
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN65_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Display$GT$3fmt17h1586bf2c3c63b7baE (type 7) (param i32 i32) (result i32)
    local.get 1
    i32.const 1064830
    i32.const 24
    call $_ZN4core3fmt9Formatter3pad17h024b1a340d71718eE)
  (func $_ZN4core7unicode12unicode_data15grapheme_extend11lookup_slow17h6163f3b5eb7e55e7E (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 1
    i32.const 0
    i32.const 17
    local.get 0
    i32.const 71727
    i32.lt_u
    select
    local.tee 2
    local.get 2
    i32.const 8
    i32.or
    local.tee 2
    local.get 2
    i32.const 2
    i32.shl
    i32.load offset=1062996
    i32.const 11
    i32.shl
    local.get 0
    i32.const 11
    i32.shl
    local.tee 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 4
    i32.or
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=1062996
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 2
    i32.or
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=1062996
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=1062996
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 1
    i32.add
    local.tee 3
    local.get 3
    i32.const 2
    i32.shl
    i32.load offset=1062996
    i32.const 11
    i32.shl
    local.get 2
    i32.gt_u
    select
    local.tee 3
    i32.const 2
    i32.shl
    i32.load offset=1062996
    i32.const 11
    i32.shl
    local.tee 4
    local.get 2
    i32.eq
    local.get 4
    local.get 2
    i32.lt_u
    i32.add
    local.get 3
    i32.add
    local.tee 3
    i32.const 2
    i32.shl
    local.tee 2
    i32.const 1062996
    i32.add
    local.set 5
    local.get 2
    i32.load offset=1062996
    i32.const 21
    i32.shr_u
    local.set 2
    i32.const 751
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 32
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        i32.const 21
        i32.shr_u
        local.set 4
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const -4
      i32.add
      i32.load
      i32.const 2097151
      i32.and
      local.set 1
    end
    block  ;; label = @1
      local.get 4
      local.get 2
      i32.const -1
      i32.xor
      i32.add
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.sub
      local.set 3
      local.get 4
      i32.const -1
      i32.add
      local.set 4
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.const 1061192
        i32.add
        i32.load8_u
        i32.add
        local.tee 0
        local.get 3
        i32.gt_u
        br_if 1 (;@1;)
        local.get 4
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 1
    i32.and)
  (func $_ZN4core7unicode9printable12is_printable17haa85ac9d86e44d54E (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 32
                i32.lt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 0
                  i32.const 127
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 1
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 65536
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 131072
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 0
                    i32.const 2097120
                    i32.and
                    i32.const 173792
                    i32.ne
                    local.get 0
                    i32.const 2097150
                    i32.and
                    i32.const 178206
                    i32.ne
                    i32.and
                    local.get 0
                    i32.const -177984
                    i32.add
                    i32.const -6
                    i32.lt_u
                    i32.and
                    local.get 0
                    i32.const -183984
                    i32.add
                    i32.const -14
                    i32.lt_u
                    i32.and
                    local.get 0
                    i32.const -191472
                    i32.add
                    i32.const -15
                    i32.lt_u
                    i32.and
                    local.get 0
                    i32.const -194560
                    i32.add
                    i32.const -2466
                    i32.lt_u
                    i32.and
                    local.get 0
                    i32.const -196608
                    i32.add
                    i32.const -1506
                    i32.lt_u
                    i32.and
                    local.get 0
                    i32.const -201552
                    i32.add
                    i32.const -5
                    i32.lt_u
                    i32.and
                    local.get 0
                    i32.const -917760
                    i32.add
                    i32.const -712016
                    i32.lt_u
                    i32.and
                    local.get 0
                    i32.const 918000
                    i32.lt_u
                    i32.and
                    local.set 1
                    br 7 (;@1;)
                  end
                  i32.const 0
                  local.set 2
                  local.get 0
                  i32.const 8
                  i32.shr_u
                  i32.const 255
                  i32.and
                  local.set 3
                  i32.const 0
                  local.set 4
                  loop  ;; label = @8
                    local.get 4
                    i32.const 2
                    i32.add
                    local.set 5
                    local.get 2
                    local.get 4
                    i32.load8_u offset=1063915
                    local.tee 1
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      local.get 4
                      i32.load8_u offset=1063914
                      local.tee 4
                      local.get 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 3
                      i32.gt_u
                      br_if 7 (;@2;)
                      local.get 6
                      local.set 2
                      local.get 5
                      local.set 4
                      local.get 5
                      i32.const 80
                      i32.ne
                      br_if 1 (;@8;)
                      br 7 (;@2;)
                    end
                    local.get 6
                    local.get 2
                    i32.lt_u
                    br_if 5 (;@3;)
                    local.get 6
                    i32.const 290
                    i32.gt_u
                    br_if 5 (;@3;)
                    local.get 2
                    i32.const 1063994
                    i32.add
                    local.set 4
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        br_if 0 (;@10;)
                        local.get 6
                        local.set 2
                        local.get 5
                        local.set 4
                        local.get 5
                        i32.const 80
                        i32.ne
                        br_if 2 (;@8;)
                        br 8 (;@2;)
                      end
                      local.get 1
                      i32.const -1
                      i32.add
                      local.set 1
                      local.get 4
                      i32.load8_u
                      local.set 2
                      local.get 4
                      i32.const 1
                      i32.add
                      local.set 4
                      local.get 2
                      local.get 0
                      i32.const 255
                      i32.and
                      i32.ne
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                end
                i32.const 0
                local.set 2
                local.get 0
                i32.const 8
                i32.shr_u
                i32.const 255
                i32.and
                local.set 3
                i32.const 0
                local.set 4
                loop  ;; label = @7
                  local.get 4
                  i32.const 2
                  i32.add
                  local.set 5
                  local.get 2
                  local.get 4
                  i32.load8_u offset=1063133
                  local.tee 1
                  i32.add
                  local.set 6
                  block  ;; label = @8
                    local.get 4
                    i32.load8_u offset=1063132
                    local.tee 4
                    local.get 3
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 3
                    i32.gt_u
                    br_if 4 (;@4;)
                    local.get 6
                    local.set 2
                    local.get 5
                    local.set 4
                    local.get 5
                    i32.const 88
                    i32.ne
                    br_if 1 (;@7;)
                    br 4 (;@4;)
                  end
                  local.get 6
                  local.get 2
                  i32.lt_u
                  br_if 2 (;@5;)
                  local.get 6
                  i32.const 208
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1063220
                  i32.add
                  local.set 4
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      br_if 0 (;@9;)
                      local.get 6
                      local.set 2
                      local.get 5
                      local.set 4
                      local.get 5
                      i32.const 88
                      i32.ne
                      br_if 2 (;@7;)
                      br 5 (;@4;)
                    end
                    local.get 1
                    i32.const -1
                    i32.add
                    local.set 1
                    local.get 4
                    i32.load8_u
                    local.set 2
                    local.get 4
                    i32.const 1
                    i32.add
                    local.set 4
                    local.get 2
                    local.get 0
                    i32.const 255
                    i32.and
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
              end
              i32.const 0
              local.set 1
              br 4 (;@1;)
            end
            local.get 2
            local.get 6
            i32.const 208
            i32.const 1064600
            call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
            unreachable
          end
          local.get 0
          i32.const 65535
          i32.and
          local.set 2
          i32.const 1
          local.set 1
          i32.const 0
          local.set 4
          loop  ;; label = @4
            local.get 4
            i32.const 1
            i32.add
            local.set 6
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.load8_s offset=1063428
                local.tee 0
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 6
                local.set 4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 6
                i32.const 486
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.const 127
                i32.and
                i32.const 8
                i32.shl
                local.get 4
                i32.const 1063429
                i32.add
                i32.load8_u
                i32.or
                local.set 0
                local.get 4
                i32.const 2
                i32.add
                local.set 4
                br 1 (;@5;)
              end
              i32.const 1064584
              call $_ZN4core6option13unwrap_failed17h4201e3fa52b09e6aE
              unreachable
            end
            local.get 2
            local.get 0
            i32.sub
            local.tee 2
            i32.const 0
            i32.lt_s
            br_if 3 (;@1;)
            local.get 1
            i32.const 1
            i32.xor
            local.set 1
            local.get 4
            i32.const 486
            i32.ne
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 2
        local.get 6
        i32.const 290
        i32.const 1064600
        call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
        unreachable
      end
      i32.const 1
      local.set 1
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 4
        i32.const 1
        i32.add
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.load8_s offset=1064284
            local.tee 2
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 6
            local.set 4
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 6
            i32.const 297
            i32.eq
            br_if 0 (;@4;)
            local.get 2
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            local.get 4
            i32.const 1064285
            i32.add
            i32.load8_u
            i32.or
            local.set 2
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            br 1 (;@3;)
          end
          i32.const 1064584
          call $_ZN4core6option13unwrap_failed17h4201e3fa52b09e6aE
          unreachable
        end
        local.get 0
        local.get 2
        i32.sub
        local.tee 0
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.xor
        local.set 1
        local.get 4
        i32.const 297
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1
    i32.const 1
    i32.and)
  (func $_ZN4core5slice5index16slice_index_fail8do_panic7runtime17h79a5e6d91d77693dE (type 4) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1062788
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN4core5slice5index16slice_index_fail8do_panic7runtime17h98616bf605a3f5b2E (type 4) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1062856
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN4core5slice5index16slice_index_fail8do_panic7runtime17hbb44f8aa8e2d7d68E (type 4) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1062888
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN4core5slice6memchr14memchr_aligned17heb6a1ab59d075a42E (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 4
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.const -8
            i32.add
            local.set 5
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 3
          local.get 4
          local.get 2
          i32.sub
          local.tee 4
          local.get 3
          local.get 4
          i32.lt_u
          select
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            local.get 1
            i32.const 255
            i32.and
            local.set 7
            i32.const 1
            local.set 8
            loop  ;; label = @5
              local.get 2
              local.get 6
              i32.add
              i32.load8_u
              local.get 7
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 6
              i32.const 1
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 4
          local.get 3
          i32.const -8
          i32.add
          local.tee 5
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 6
        loop  ;; label = @3
          i32.const 16843008
          local.get 2
          local.get 4
          i32.add
          local.tee 7
          i32.load
          local.get 6
          i32.xor
          local.tee 8
          i32.sub
          local.get 8
          i32.or
          i32.const 16843008
          local.get 7
          i32.const 4
          i32.add
          i32.load
          local.get 6
          i32.xor
          local.tee 7
          i32.sub
          local.get 7
          i32.or
          i32.and
          i32.const -2139062144
          i32.and
          i32.const -2139062144
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.const 8
          i32.add
          local.tee 4
          local.get 5
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 3
        local.get 4
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        local.set 6
        i32.const 1
        local.set 8
        loop  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 4
            i32.add
            i32.load8_u
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.set 6
            br 3 (;@1;)
          end
          local.get 3
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      local.set 8
    end
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store)
  (func $_ZN4core5slice6memchr7memrchr17h255195ffdf0ecbabE (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 3
    i32.const 0
    local.get 3
    local.get 2
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.get 2
    i32.sub
    local.tee 4
    i32.sub
    i32.const 7
    i32.and
    local.get 3
    local.get 4
    i32.lt_u
    select
    local.tee 5
    i32.sub
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 5
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 3
                  i32.add
                  local.tee 7
                  i32.const -1
                  i32.add
                  local.tee 8
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const -1
                  i32.add
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 2
                local.get 6
                i32.add
                local.tee 9
                local.get 8
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 7
                  i32.const -2
                  i32.add
                  local.tee 8
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const -2
                  i32.add
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 9
                local.get 8
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 7
                  i32.const -3
                  i32.add
                  local.tee 8
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const -3
                  i32.add
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 9
                local.get 8
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 7
                  i32.const -4
                  i32.add
                  local.tee 8
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const -4
                  i32.add
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 9
                local.get 8
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 7
                  i32.const -5
                  i32.add
                  local.tee 8
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const -5
                  i32.add
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 9
                local.get 8
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 7
                  i32.const -6
                  i32.add
                  local.tee 8
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const -6
                  i32.add
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 9
                local.get 8
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 7
                  i32.const -7
                  i32.add
                  local.tee 8
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const -7
                  i32.add
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 9
                local.get 8
                i32.eq
                br_if 1 (;@5;)
                local.get 5
                i32.const -8
                i32.or
                local.set 5
              end
              local.get 5
              local.get 6
              i32.add
              local.set 5
              br 3 (;@2;)
            end
            local.get 4
            local.get 3
            local.get 3
            local.get 4
            i32.gt_u
            select
            local.set 9
            local.get 1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set 4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 6
                local.tee 5
                local.get 9
                i32.le_u
                br_if 1 (;@5;)
                local.get 5
                i32.const -8
                i32.add
                local.set 6
                i32.const 16843008
                local.get 2
                local.get 5
                i32.add
                local.tee 8
                i32.const -8
                i32.add
                i32.load
                local.get 4
                i32.xor
                local.tee 7
                i32.sub
                local.get 7
                i32.or
                i32.const 16843008
                local.get 8
                i32.const -4
                i32.add
                i32.load
                local.get 4
                i32.xor
                local.tee 8
                i32.sub
                local.get 8
                i32.or
                i32.and
                i32.const -2139062144
                i32.and
                i32.const -2139062144
                i32.eq
                br_if 0 (;@6;)
              end
            end
            local.get 5
            local.get 3
            i32.gt_u
            br_if 1 (;@3;)
            local.get 2
            i32.const -1
            i32.add
            local.set 4
            local.get 1
            i32.const 255
            i32.and
            local.set 8
            loop  ;; label = @5
              block  ;; label = @6
                local.get 5
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 5 (;@1;)
              end
              local.get 4
              local.get 5
              i32.add
              local.set 6
              local.get 5
              i32.const -1
              i32.add
              local.set 5
              local.get 6
              i32.load8_u
              local.get 8
              i32.eq
              br_if 3 (;@2;)
              br 0 (;@5;)
            end
          end
          local.get 6
          local.get 3
          local.get 3
          i32.const 1062904
          call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
          unreachable
        end
        i32.const 0
        local.get 5
        local.get 3
        i32.const 1062920
        call $_ZN4core5slice5index16slice_index_fail17h868fca5b230c1e6eE
        unreachable
      end
      i32.const 1
      local.set 6
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store)
  (func $_ZN4core6option13expect_failed17haca81fcbfb12091aE (type 4) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 1
    i32.store offset=20
    local.get 3
    i32.const 1062744
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=28 align=4
    local.get 3
    i32.const 63
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 3
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 3
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN4core6result13unwrap_failed17h1d6e5e7cf4a1711bE (type 10) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 2
    i32.store offset=28
    local.get 5
    i32.const 1062980
    i32.store offset=24
    local.get 5
    i64.const 2
    i64.store offset=36 align=4
    local.get 5
    i32.const 67
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 5
    i32.const 63
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN4core9panicking19assert_failed_inner17h6dea98922420f38eE (type 14) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 2
    i32.store offset=12
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 7
    local.get 4
    i32.store offset=20
    local.get 7
    local.get 3
    i32.store offset=16
    local.get 7
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    local.tee 2
    i32.load offset=1064872
    i32.store offset=28
    local.get 7
    local.get 2
    i32.load offset=1064860
    i32.store offset=24
    block  ;; label = @1
      local.get 5
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 7
      i32.const 32
      i32.add
      i32.const 16
      i32.add
      local.get 5
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 7
      i32.const 32
      i32.add
      i32.const 8
      i32.add
      local.get 5
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 7
      local.get 5
      i64.load align=4
      i64.store offset=32
      local.get 7
      i32.const 4
      i32.store offset=92
      local.get 7
      i32.const 1064796
      i32.store offset=88
      local.get 7
      i64.const 4
      i64.store offset=100 align=4
      local.get 7
      i32.const 67
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 8
      local.get 7
      i32.const 16
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=80
      local.get 7
      local.get 8
      local.get 7
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=72
      local.get 7
      i32.const 68
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 7
      i32.const 32
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=64
      local.get 7
      i32.const 63
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 7
      i32.const 24
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=56
      local.get 7
      local.get 7
      i32.const 56
      i32.add
      i32.store offset=96
      local.get 7
      i32.const 88
      i32.add
      local.get 6
      call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
      unreachable
    end
    local.get 7
    i32.const 3
    i32.store offset=92
    local.get 7
    i32.const 1064744
    i32.store offset=88
    local.get 7
    i64.const 3
    i64.store offset=100 align=4
    local.get 7
    i32.const 67
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 8
    local.get 7
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=72
    local.get 7
    local.get 8
    local.get 7
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=64
    local.get 7
    i32.const 63
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 7
    i32.const 24
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 7
    local.get 7
    i32.const 56
    i32.add
    i32.store offset=96
    local.get 7
    i32.const 88
    i32.add
    local.get 6
    call $_ZN4core9panicking9panic_fmt17h0b13373adea87d39E
    unreachable)
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h44b171dffa38accfE (type 7) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    call $_ZN4core3fmt5write17h73319cf8ac237dc9E)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hdb851b64c6c6ab32E (type 7) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 1064854
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 5)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 1
    i32.const 10
    i32.eq
    i32.store8
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=16
    call_indirect (type 7))
  (table (;0;) 72 72 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global $GOT.data.internal.__memory_base i32 (i32.const 0))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "__main_void" (func $__main_void))
  (elem (;0;) (i32.const 1) func $_ZN2bf4main17h10d65795417b6cedE $_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc68d2d4b60b1e7a1E $_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he2e8b2654aa3d23fE $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h3238718defed9734E $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h45db55f8ca9a304eE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h171595233070c997E $_ZN3std5alloc24default_alloc_error_hook17hf81fbf296b2d6ee4E $_ZN98_$LT$std..sys..backtrace..BacktraceLock..print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17h394bc400cfeaa862E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h891f080cca532428E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf3face4c49472d90E $_ZN52_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1e29934985b2b907E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hf1c5f67c5aebf90aE $_ZN4core3ptr119drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$GT$$GT$17h14e9ec2f48228ea8E $_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h4cd8834ea5264c9eE $_ZN4core3fmt5Write10write_char17h2cfd03e56cc7097eE $_ZN4core3fmt5Write9write_fmt17h62bf10f0602d58a9E $_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc56625ca52b2430cE $_ZN4core3fmt5Write10write_char17h2ad498c3061297f4E $_ZN4core3fmt5Write9write_fmt17h48b7ae066fc63656E $_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0ef004a031a1fc93E $_ZN4core3fmt5Write10write_char17h3c67b25078b609dcE $_ZN4core3fmt5Write9write_fmt17h1f5d5519ca8dfac5E $_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17hde73a35b28034c35E $_ZN62_$LT$std..io..error..ErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he6a9614b837cb9d1E $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcaa6a12e3d08de7dE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h4f384db9801ee177E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9e4131018ad564fbE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h43e8d4061b8fb023E $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h211db6b31d2f12e4E $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf4c13f087aa345e4E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5write17haf2e07e16cc1331fE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17he6b4c4e62247cd1dE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$17is_write_vectored17h98fa5401e79d7848E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$5flush17ha8933b52c88b970bE $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h6ec62d71fed20cb5E $_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$18write_all_vectored17h6feb6e39bff582e8E $_ZN3std2io5Write9write_fmt17hb57d4e151802c842E $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$5write17hf056180a68549c01E $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$14write_vectored17h63fced6cff031482E $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$17is_write_vectored17hd3cf79b67b8fac76E $_ZN66_$LT$std..sys..stdio..wasip1..Stderr$u20$as$u20$std..io..Write$GT$5flush17h72999151f5dd4227E $_ZN3std2io5Write9write_all17h2449cb573fa81848E $_ZN3std2io5Write18write_all_vectored17h99976bea0c3e6ee3E $_ZN3std2io5Write9write_fmt17h0b3889972d2efc48E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17ha671a31606185aafE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hbbbfcf3fb6c78f9aE $_ZN4core3fmt5Write9write_fmt17h55f123ca8dbbb128E $_ZN86_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..fmt..Display$GT$3fmt17h9a3b89e5402ac945E $_ZN93_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17h21862e7720ef2883E $_ZN93_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h3ec86653ed680624E $_ZN93_$LT$std..panicking..panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$6as_str17h6ea2cefdbc0cf72fE $_ZN4core3ptr71drop_in_place$LT$std..panicking..panic_handler..FormatStringPayload$GT$17h2fc6fde85bb538c2E $_ZN89_$LT$std..panicking..panic_handler..FormatStringPayload$u20$as$u20$core..fmt..Display$GT$3fmt17hebb68764beae81f0E $_ZN96_$LT$std..panicking..panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17h8def30111e92354eE $_ZN96_$LT$std..panicking..panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17hc03ba47a0158faeeE $_ZN4core5panic12PanicPayload6as_str17h143a9b530a7d5cdfE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hde02cd8d5a044f92E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6d5eb23c99b8106dE $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h9b30f403c31183adE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e0beabc178e76f4E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h2055c642c6de02ecE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h197406c149b72ff4E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6f5b46b5b26ab007E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h99a726fac8bbe808E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h25ecbd092e47f48bE $_ZN65_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Display$GT$3fmt17h1586bf2c3c63b7baE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c4f5901684480f0E $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h44b171dffa38accfE $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h4b00922137b93533E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hdb851b64c6c6ab32E $_ZN4core3fmt5Write9write_fmt17he781aec646248d6aE)
  (data $.rodata (i32.const 1048576) "library/std/src/rt.rs\00library/std/src/sys/pal/wasip1/os.rs\00library/std/src/sys/sync/mutex/no_threads.rs\00library/alloc/src/ffi/c_str.rs\00library/core/src/slice/memchr.rs\00library/std/src/io/buffered/bufwriter.rs\00src/interpreter.rs\00library/std/src/io/stdio.rs\00src/main.rs\00library/std/src/io/buffered/linewritershim.rs\00library/std/src/sync/reentrant_lock.rs\00library/std/src/sys/io/io_slice/wasi.rs\00library/std/src/panicking.rs\00library/core/src/unicode/printable.rs\00library/std/src/sync/poison/once.rs\00/rustc/f8297e351a40c1439a467bbbb6879088047f50b3/library/alloc/src/slice.rs\00library/core/src/fmt/mod.rs\00library/std/src/io/mod.rs\00library/std/src/thread/mod.rs\00/rustc/f8297e351a40c1439a467bbbb6879088047f50b3/library/alloc/src/raw_vec/mod.rs\00/rustc/f8297e351a40c1439a467bbbb6879088047f50b3/library/alloc/src/vec/mod.rs\00/rustc/f8297e351a40c1439a467bbbb6879088047f50b3/library/alloc/src/boxed.rs\00library/std/src/alloc.rs\00/\00pointer moved past right end of tape\00\93\03\10\00$\00\00\00\d1\00\10\00\12\00\00\00%\00\00\00\19\00\00\00pointer moved past left end of tape\00\d0\03\10\00#\00\00\00\d1\00\10\00\12\00\00\00,\00\00\00\19\00\00\00\d1\00\10\00\12\00\00\002\00\00\00<\00\00\00\d1\00\10\00\12\00\00\006\00\00\00<\00\00\00\d1\00\10\00\12\00\00\00:\00\00\00)\00\00\00\02\00\00\00\08\00\00\00\04\00\00\00\03\00\00\00called `Result::unwrap()` on an `Err` value\00\d1\00\10\00\12\00\00\00<\00\00\00)\00\00\00\d1\00\10\00\12\00\00\00;\00\00\002\00\00\00\d1\00\10\00\12\00\00\00B\00\00\00(\00\00\00\d1\00\10\00\12\00\00\00F\00\00\00(\00\00\00\d1\00\10\00\12\00\00\00L\00\00\00#\00\00\00\d1\00\10\00\12\00\00\00V\00\00\00#\00\00\00[\0a   Takes an integer from stdin and emits its factors to stdout\0a\0a   Factor an arbitrarily large positive integer\0a\0a\0a   Copyright (C) 1999 by Brian Raiter\0a   under the GNU General Public License\0a]\0a\0a>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-\0a\0a\0a*\0a* read in the number\0a*\0a\0a<<<<<<<<<+\0a[-[>>>>>>>>>>][-]<<<<<<<<<<[[->>>>>>>>>>+<<<<<<<<<<]<<<<<<<<<<]\0a  >>>>>>>>>>,----------]\0a>>>>>>>>>>[------------------------------------->>>>>>>>>->]\0a<[+>[>>>>>>>>>+>]<-<<<<<<<<<<]-\0a\0a*\0a* display the number and initialize the loop variable to two\0a*\0a\0a[>++++++++++++++++++++++++++++++++++++++++++++++++.\0a  ------------------------------------------------<<<<<<<<<<<]\0a++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.\0a--------------------------.[-]\0a\0a>>>>>>>>>>>>++<<<<+\0a\0a*\0a* the main loop\0a*\0a\0a[ [-]>>\0a\0a\0a  *\0a  * make copies of the number and the loop variable\0a  *\0a\0a\0a  [>>>>[-]>[-]>[-]>[-]\0a    >[-]>[-]\0a    <<<<<<<[->>>+>+<<<<]>>>>>>>>]\0a  <<<<<<<<<<[>>>>>>[-<<<<+>>>>]<<<<<<<<<<<<<<<<]>>>>>>>>>>\0a  [>[->>>+>>+<<<<<]>>>>>>>>>]\0a  <<<<<<<<<<[>>>>>>[-<<<<<+>>>>>]<<<<<<<<<<<<<<<<]>>>>>>>>>>\0a\0a  *\0a  * divide the number by the loop variable\0a  *\0a\0a  [>>>[-]>>>[-]>[-]>>>]                                  initialize\0a  <<<<<<<<<<[<<<<<<<<<<]\0a  >>>>>>>>>[-]>>>>>>>+<<<<<<<<[+]+\0a  [ ->>                               double divisor until above dividend\0a    [>>>>>>[->++<]>>>>]<<<<<<<<<<\0a    [>>>>>>>>[-]>[-]\0a       <<<<[->>>++<<<]<<<<<<<<<<<<<<<]>>>>>>>>>>\0a    [>>>>>>>>[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<\0a            [->--------->>>>>>>>>+<<<<<<<<<<[->+<]]]]]]]]]]]>>]\0a    <<<<<<<<<<[>>>>>>>>>[-<+<<<+>>>>]<<<<<<<<<<<<<<<<<<<]>>>>>>>>>>\0a    [>>>>>>>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>[-<+>\0a\0a            [-<--------->>>>>>>>>>>+<<<<<<<<<<[-<+>]]]]]]]]]]]>>>]\0a    <<<<<<<<<<\0a    [>>>>[->>>+>>+<<<<<]<<<<<<<<<<<<<<]\0a    >>>>>>>>>>[>>>>>>>[-<<<+>>>]>>>]<<<<<<<<<<\0a    [>>>>>>>>[->-<]>\0a      [<<<<<<<<<[<[-]>>>>>>>>>>[-<<<<<<<<<<+>>>>>>>>>>]<<<<<<<<<<<<<<<<<<<]\0a        >>>>>>>>>>>>>>>>>>>]\0a      <<<<<<<<<<<<<<<<<<<]\0a    >>>>>>>>>[+[+[+[+[+[+[+[+[+[+[[-]<+>]]]]]]]]]]]<\0a  ]\0a  >>>>>>>>\0a  [                                   subtract divisor from dividend\0a    <<<<<<\0a    [>>>>>>>>[-]>[-]<<<<<[->>>+>+<<<<]>>>>>>]<<<<<<<<<<\0a    [>>>>>>>>[-<<<<+>>>>]<<<[->>>+>+<<<<]<<<<<<<<<<<<<<<]>>>>>>>>>>\0a    [>>>>>>>>>[-<<<<+>>>>]>]<<<<<<<<<<\0a    [>>>>>>>>[-<->]<<<<<<<<<<<<<<<<<<]>>>>>>>>>>\0a    [>>>>>>>[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<[->+<\0a\0a            [++++++++++[+>-<]>>>>>>>>>>-<<<<<<<<<<]]]]]]]]]]]>>>]\0a    >>>>>>>+\0a    [                                 if difference is nonnegative then\0a      [-]<<<<<<<<<<<<<<<<<            replace dividend and increment quotient\0a      [>>>>[-]>>>>[-<<<<+>>>>]<<[->>+<<]<<<<<<<<<<<<<<<<]>>>>>>>>>>\0a      [>>>>>>>>[->+<<<+>>]>>]<<<<<<<<<<\0a\0a      [>>>[->>>>>>+<<<<<<]<<<<<<<<<<<<<]>>>>>>>>>>\0a      [>>>>>>>>>[-<<<<<<+>>>>>>[-<<<<<<+>>>>>>\0a                [-<<<<<<+>>>>>>[-<<<<<<+>>>>>>\0a                [-<<<<<<+>>>>>>[-<<<<<<+>>>>>>\0a                [-<<<<<<+>>>>>>[-<<<<<<+>>>>>>\0a                [-<<<<<<+>>>>>>[-<<<<<<--------->>>>>>>>>>>>>>>>+<<<<<<<<<<\0a                [-<<<<<<+>>>>>>]]]]]]]]]]]>]\0a      >>>>>>>\0a    ]                                 halve divisor and loop until zero\0a    <<<<<<<<<<<<<<<<<[<<<<<<<<<<]>>>>>>>>>>\0a    [>>>>>>>>[-]<<[->+<]<[->>>+<<<]>>>>>]<<<<<<<<<<\0a    [+>>>>>>>[-<<<<<<<+>>>>>>>[-<<<<<<<->>>>>>+>\0a             [-<<<<<<<+>>>>>>>[-<<<<<<<->>>>>>+>\0a             [-<<<<<<<+>>>>>>>[-<<<<<<<->>>>>>+>\0a             [-<<<<<<<+>>>>>>>[-<<<<<<<->>>>>>+>\0a             [-<<<<<<<+>>>>>>>]]]]]]]]]<<<<<<<\0a             [->>>>>>>+<<<<<<<]-<<<<<<<<<<]\0a    >>>>>>>\0a    [-<<<<<<<<<<<+>>>>>>>>>>>]\0a      >>>[>>>>>>>[-<<<<<<<<<<<+++++>>>>>>>>>>>]>>>]<<<<<<<<<<\0a    [+>>>>>>>>[-<<<<<<<<+>>>>>>>>[-<<<<<<<<->>>>>+>>>\0a              [-<<<<<<<<+>>>>>>>>[-<<<<<<<<->>>>>+>>>\0a              [-<<<<<<<<+>>>>>>>>[-<<<<<<<<->>>>>+>>>\0a\0a              [-<<<<<<<<+>>>>>>>>[-<<<<<<<<->>>>>+>>>\0a              [-<<<<<<<<+>>>>>>>>]]]]]]]]]<<<<<<<<\0a\0a              [->>>>>>>>+<<<<<<<<]-<<<<<<<<<<]\0a    >>>>>>>>[-<<<<<<<<<<<<<+>>>>>>>>>>>>>]>>\0a\0a    [>>>>>>>>[-<<<<<<<<<<<<<+++++>>>>>>>>>>>>>]>>]<<<<<<<<<<\0a    [<<<<<<<<<<]>>>>>>>>>>\0a    >>>>>>\0a  ]\0a  <<<<<<\0a\0a  *\0a  * make copies of the loop variable and the quotient\0a\0a  *\0a\0a  [>>>[->>>>+>+<<<<<]>>>>>>>]\0a\0a  <<<<<<<<<<\0a  [>>>>>>>[-<<<<+>>>>]<<<<<[->>>>>+>>+<<<<<<<]<<<<<<<<<<<<]\0a\0a  >>>>>>>>>>[>>>>>>>[-<<<<<+>>>>>]>>>]<<<<<<<<<<\0a\0a  *\0a  * break out of the loop if the quotient is larger than the loop variable\0a  *\0a\0a  [>>>>>>>>>[-<->]<\0a\0a    [<<<<<<<<\0a      [<<[-]>>>>>>>>>>[-<<<<<<<<<<+>>>>>>>>>>]<<<<<<<<<<<<<<<<<<]\0a    >>>>>>>>>>>>>>>>>>]<<<<<<<<<<<<<<<<<<]\0a\0a  >>>>>>>>[>-<[+[+[+[+[+[+[+[+[+[[-]>+<]]]]]]]]]]]>+\0a\0a  [ [-]\0a\0a    *\0a\0a    * partially increment the loop variable\0a    *\0a\0a\0a    <[-]+>>>>+>>>>>>>>[>>>>>>>>>>]<<<<<<<<<<\0a\0a\0a    *\0a    * examine the remainder for nonzero digits\0a    *\0a\0a    [<<<<<<[<<<<[<<<<<<<<<<]>>>>+<<<<<<<<<<]<<<<]\0a    >>>>>>>>>>>>>>>>>>>>[>>>>>>>>>>]<<<<<<<<<<[<<<<<<<<<<]\0a    >>>>-\0a\0a    [ [+]\0a\0a      *\0a      * decrement the loop variable and replace the number with the quotient\0a      *\0a\0a      >>>>>>>>-<<[>[-]>>[-<<+>>]>>>>>>>]<<<<<<<<<<\0a\0a\0a      *\0a      * display the loop variable\0a\0a      *\0a\0a      [+>>[>>>>>>>>+>>]<<-<<<<<<<<<<]-\0a      [>>++++++++++++++++++++++++++++++++++++++++++++++++.\0a\0a         ------------------------------------------------<<<<<<<<<<<<]\0a      ++++++++++++++++++++++++++++++++.[-]>>>>\0a\0a    ]\0a\0a\0a    *\0a    * normalize the loop variable\0a    *\0a\0a    >>>>>>\0a    [>>[->>>>>+<<<<<[->>>>>+<<<<<\0a       [->>>>>+<<<<<[->>>>>+<<<<<\0a       [->>>>>+<<<<<[->>>>>+<<<<<\0a       [->>>>>+<<<<<[->>>>>+<<<<<\0a       [->>>>>+<<<<<[->>>>>--------->>>>>+<<<<<<<<<<\0a       [->>>>>+<<<<<]]]]]]]]]]]>>>>>>>>]\0a    <<<<<<<<<<[>>>>>>>[-<<<<<+>>>>>]<<<<<<<<<<<<<<<<<]\0a    >>>>>>>>>\0a\0a  ]<\0a\0a]>>\0a\0a*\0a* display the number and end\0a*\0a\0a[>>>>>>>>>>]<<<<<<<<<<[+>[>>>>>>>>>+>]<-<<<<<<<<<<]-\0a[>++++++++++++++++++++++++++++++++++++++++++++++++.<<<<<<<<<<<]\0a++++++++++.\0a\00\00\00\00\01\10\00\0b\00\00\00E\00\00\00\11\00\00\00unmatched '[' found\00\10\1c\10\00\13\00\00\00\00\01\10\00\0b\00\00\008\00\00\00\09\00\00\00\00\01\10\00\0b\00\00\00\1f\00\00\00!\00\00\00\00\01\10\00\0b\00\00\00 \00\00\00!\00\00\00\00\01\10\00\0b\00\00\00!\00\00\00!\00\00\00\00\01\10\00\0b\00\00\00\22\00\00\00!\00\00\00\00\01\10\00\0b\00\00\00#\00\00\00!\00\00\00\00\01\10\00\0b\00\00\00$\00\00\00!\00\00\00\00\01\10\00\0b\00\00\00'\00\00\00\1c\00\00\00\00\01\10\00\0b\00\00\00)\00\00\00\1e\00\00\00unmatched ']' found\00\00\01\10\00\0b\00\00\00,\00\00\001\00\00\00\00\01\10\00\0b\00\00\00.\00\00\00\1d\00\00\00\00\01\10\00\0b\00\00\00/\00\00\00\1e\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00fatal runtime error: failed to initiate panic, error , aborting\0a\18\1d\10\005\00\00\00M\1d\10\00\0b\00\00\00\86\9dv\be\18\e5a\86#\b0\ac(\85\99\9b\d9m]\cb\d6,P\ebcxA\a6Wq\1b\8b\b9\01\00\00\00\00\00\00\00:\0aa formatting trait implementation returned an error when the underlying stream did not\92\1d\10\00V\00\00\00W\02\10\00\19\00\00\00\88\02\00\00\11\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00failed to write whole bufferH\1e\10\00\1c\00\00\00\17\00\00\00\02\00\00\00d\1e\10\00W\02\10\00\19\00\00\001\07\00\00$\00\00\00Os\00\00\00\00\00\00\04\00\00\00\04\00\00\00\17\00\00\00code\00\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00kind\19\00\00\00\0c\00\00\00\04\00\00\00\1a\00\00\00messageKindError\00\00\00\00\08\00\00\00\04\00\00\00\1b\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\1c\00\00\00Customerrormid > len\ff\1e\10\00\09\00\00\00\a8\00\10\00(\00\00\00z\00\00\00!\00\00\00\e4\00\10\00\1b\00\00\00\e3\02\00\00\13\00\00\00W\02\10\00\19\00\00\000\06\00\00 \00\00\00advancing io slices beyond their length\00@\1f\10\00'\00\00\00W\02\10\00\19\00\00\002\06\00\00\0d\00\00\00advancing IoSlice beyond its length\00\80\1f\10\00#\00\00\00a\01\10\00'\00\00\00\14\00\00\00\0d\00\00\00failed to write the buffered data\00\00\00\bc\1f\10\00!\00\00\00\17\00\00\00\00\00\10\00\15\00\00\00\8d\00\00\00\0d\00\00\00file name contained an unexpected NUL byte\00\00\fc\1f\10\00*\00\00\00\14\00\00\00\00\00\00\00\02\00\00\00( \10\00\00\00\00\00\08\00\00\00\04\00\00\00\1d\00\00\00called `Result::unwrap()` on an `Err` value\00\16\00\10\00$\00\00\00'\00\00\006\00\00\00strerror_r failure\00\00\8c \10\00\12\00\00\00\16\00\10\00$\00\00\00%\00\00\00\0d\00\00\00\16\00\10\00$\00\00\00,\00\00\00\13\00\00\00\16\00\10\00$\00\00\003\00\00\00\15\00\00\00Once instance has previously been poisoned\00\00\d8 \10\00*\00\00\00one-time initialization may not be performed recursively\0c!\10\008\00\00\00fatal runtime error: rwlock locked for writing, aborting\0a\00\00\00L!\10\009\00\00\00stack backtrace:\0anote: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0acannot recursively acquire mutex\00\00\00\f9!\10\00 \00\00\00;\00\10\00,\00\00\00\13\00\00\00\09\00\00\00lock count overflow in reentrant mutex\00\00:\01\10\00&\00\00\00#\01\00\00-\00\00\00\00\00\00\00\cc\01\10\00#\00\00\00\d7\00\00\00\14\00\00\00\cc\01\10\00#\00\00\00\9c\00\00\002\00\00\00memory allocation of  bytes failed\0a\00\90\22\10\00\15\00\00\00\a5\22\10\00\0e\00\00\00 bytes failed\00\00\00\90\22\10\00\15\00\00\00\c4\22\10\00\0d\00\00\00x\03\10\00\18\00\00\00d\01\00\00\09\00\00\00RUST_BACKTRACEmainfailed to generate unique thread ID: bitspace exhausted\00\00\00\06#\10\007\00\00\00q\02\10\00\1d\00\00\00\d4\04\00\00\0d\00\00\00\1e\00\00\00\0c\00\00\00\04\00\00\00\1f\00\00\00 \00\00\00!\00\00\00\22\00\00\00#\00\00\00$\00\00\00%\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00'\00\00\00(\00\00\00)\00\00\00*\00\00\00+\00\00\00,\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\a8#\10\00N\00\00\00<unnamed>\00\00\00\89\01\10\00\1c\00\00\00\1e\01\00\00.\00\00\00\0athread '' () panicked at :\0a\1c$\10\00\09\00\00\00%$\10\00\03\00\00\00($\10\00\0e\00\00\006$\10\00\02\00\00\00\91\1d\10\00\01\00\00\00\19\00\00\00\0c\00\00\00\04\00\00\00-\00\00\00.\00\00\00/\00\00\00\00\00\00\00\08\00\00\00\04\00\00\000\00\00\001\00\00\002\00\00\003\00\00\004\00\00\00\10\00\00\00\04\00\00\005\00\00\006\00\00\007\00\00\008\00\00\00Box<dyn Any>aborting due to panic at \00\00\00\bc$\10\00\19\00\00\006$\10\00\02\00\00\00\91\1d\10\00\01\00\00\00panicked at \0athread panicked while processing panic. aborting.\0a\00\f0$\10\00\0c\00\00\006$\10\00\02\00\00\00\fc$\10\003\00\00\00thread caused non-unwinding panic. aborting.\0a\00\00\00H%\10\00-\00\00\00\00\00\00\00\04\00\00\00\04\00\00\009\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00:\00\00\00WouldBlock\00\00\e0\02\10\00L\00\00\00\14\0b\00\00$\00\00\00-\03\10\00J\00\00\00\8b\02\00\00\12\00\00\00\8f\02\10\00P\00\00\00*\02\00\00\11\00\00\00\e4\00\10\00\1b\00\00\00Y\03\00\00\14\00\00\00\e4\00\10\00\1b\00\00\00\5c\03\00\00\14\00\00\00NotFoundPermissionDeniedConnectionRefusedConnectionResetHostUnreachableNetworkUnreachableConnectionAbortedNotConnectedAddrInUseAddrNotAvailableNetworkDownBrokenPipeAlreadyExistsNotADirectoryIsADirectoryDirectoryNotEmptyReadOnlyFilesystemFilesystemLoopStaleNetworkFileHandleInvalidInputInvalidDataTimedOutWriteZeroStorageFullNotSeekableQuotaExceededFileTooLargeResourceBusyExecutableFileBusyDeadlockCrossesDevicesTooManyLinksInvalidFilenameArgumentListTooLongInterruptedUnsupportedUnexpectedEofOutOfMemoryInProgressOtherUncategorized\00\00\00\00\04\00\00\00\04\00\00\00;\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00<\00\00\00Utf8Errorvalid_up_toerror_lenNoneSome\00\00\00\01\00\00\00\00\00\00\00\90\1d\10\00\01\00\00\00\90\1d\10\00\01\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00=\00\00\00\f0\01\10\00J\00\00\00\bd\01\00\00\1d\00\00\00\0c\01\10\00-\00\00\00\16\01\00\00)\00\00\00\19\00\00\00\0c\00\00\00\04\00\00\00>\00\00\00\22\01\08\09$\0d)))\1c))\06\02\03\1e)\14)\0c)\1b\04)))#\14))\0f\12) ))!\0a)\05))\00\00)))&))\18$\07\0e\10))$)\00))\01\0b)$))\11\19\00)\16\1c\1f\01\08\00\00\00\10\00\00\00\11\00\00\00\0f\00\00\00\0f\00\00\00\12\00\00\00\11\00\00\00\0c\00\00\00\09\00\00\00\10\00\00\00\0b\00\00\00\0a\00\00\00\0d\00\00\00\0a\00\00\00\0d\00\00\00\0c\00\00\00\11\00\00\00\12\00\00\00\0e\00\00\00\16\00\00\00\0c\00\00\00\0b\00\00\00\08\00\00\00\09\00\00\00\0b\00\00\00\0b\00\00\00\0d\00\00\00\0c\00\00\00\0c\00\00\00\12\00\00\00\08\00\00\00\0e\00\00\00\0c\00\00\00\0f\00\00\00\13\00\00\00\0b\00\00\00\0b\00\00\00\0d\00\00\00\0b\00\00\00\0a\00\00\00\05\00\00\00\0d\00\00\00\fc%\10\00\04&\10\00\14&\10\00%&\10\004&\10\00C&\10\00U&\10\00f&\10\00r&\10\00{&\10\00\8b&\10\00\96&\10\00\a0&\10\00\a0%\10\00\ad&\10\00\ba&\10\00\c6&\10\00\d7&\10\00\e9&\10\00\f7&\10\00\0d'\10\00\19'\10\00$'\10\00,'\10\005'\10\00@'\10\00K'\10\00X'\10\00d'\10\00p'\10\00\82'\10\00\8a'\10\00\98'\10\00\a4'\10\00\b3'\10\00\c6'\10\00\d1'\10\00\dc'\10\00\e9'\10\00\f4'\10\00\fe'\10\00\03(\10\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00h\00\10\00\1e\00\00\00U\01\00\00\0b\00\00\00h\00\10\00\1e\00\00\00\1a\01\00\00\1e\00\00\00h\00\10\00\1e\00\00\00\16\01\00\007\00\00\00capacity overflow\00\00\00,1\10\00\11\00\00\00\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03;\09*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\02\01\01\03\03\01\04\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\07I\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\04\1c\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\1f1\040\0a\04\03&\09\0c\02 \04\02\068\01\01\02\03\01\01\058\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b\01\01,\030\01\02\04\02\02\02\01$\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04A\05\00\02O\04F\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\01\01\08\04\02\01_\03\02\04\06\01\02\01\9d\01\03\08\15\029\02\01\01\01\01\0c\01\09\01\0e\07\03\05C\01\02\06\01\01\02\01\01\03\04\03\01\01\0e\02U\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\08e\01\01\01\02\04\01\05\00\09\01\02\f5\01\0a\04\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\0b\024\05\05\03\17\01\00\01\06\0f\00\0c\03\03\00\05;\07\00\01?\04Q\01\0b\02\00\02\00.\02\17\00\05\03\06\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05d\01\a0\07\00\01=\04\00\04\fe\02\00\07m\07\00`\80\f0\00\00;\02\10\00\1b\00\00\00\af\0a\00\00&\00\00\00;\02\10\00\1b\00\00\00\b8\0a\00\00\1a\00\00\00falsetrue000102030405060708091011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798990123456789abcdef0x0123456789ABCDEF, ,\0a((\0a),\00\00\00\00\0c\00\00\00\04\00\00\00E\00\00\00F\00\00\00G\00\00\00 { :  {\0a} }\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00[...]begin <= end ( <= ) when slicing ``\00|6\10\00\0e\00\00\00\8a6\10\00\04\00\00\00\8e6\10\00\10\00\00\00\9e6\10\00\01\00\00\00byte index  is not a char boundary; it is inside  (bytes ) of `\00\c06\10\00\0b\00\00\00\cb6\10\00&\00\00\00\f16\10\00\08\00\00\00\f96\10\00\06\00\00\00\9e6\10\00\01\00\00\00 is out of bounds of `\00\00\c06\10\00\0b\00\00\00(7\10\00\16\00\00\00\9e6\10\00\01\00\00\00\01\00\00\00\00\00\00\00slice index starts at  but ends at \00`7\10\00\16\00\00\00v7\10\00\0d\00\00\00range start index  out of range for slice of length \947\10\00\12\00\00\00\a67\10\00\22\00\00\00range end index \d87\10\00\10\00\00\00\a67\10\00\22\00\00\00\87\00\10\00 \00\00\00\84\00\00\00\1e\00\00\00\87\00\10\00 \00\00\00\a0\00\00\00\09\00\00\00called `Option::unwrap()` on a `None` value\00\01\00\00\00\00\00\00\00o5\10\00\02\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef, +*0\a0+o\a6`,\02\a8\e0,\1e\fb\e0-\00\fe 6\9e\ff`6\fd\01\e16\01\0a!7$\0d\e17\ab\0ea9/\18\e190\1c\e1J\f3\1e\e1N@4\a1R\1ea\e1S\f0jaTOo\e1T\9d\bcaU\00\cfaVe\d1\a1V\00\da!W\00\e0\a1X\ae\e2!Z\ec\e4\e1[\d0\e8a\5c \00\ee\5c\f0\01\7f]\00\06\01\01\03\01\04\02\05\07\07\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\1c\14\01\15\02\17\02\19\0d\1c\05\1d\08\1f\01$\01j\04k\02\af\03\b1\02\bc\02\cf\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e7\04\e8\02\ee \f0\04\f8\02\fa\04\fb\01\0c';>NO\8f\9e\9e\9f{\8b\93\96\a2\b2\ba\86\b1\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\8a\8c\8d\8f\b6\c1\c3\c4\c6\cb\d6\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92\11o_\bf\ee\efZb\f4\fc\ffST\9a\9b./'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\e7\ec\ef\ff\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afno\dd\de\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0bN\034\0c\817\09\16\0a\08\18;E9\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\06&\03\1d\08\02\80\d0R\10\037,\08*\16\1a&\1c\14\17\09N\04$\09D\0d\19\07\0a\06H\08'\09u\0bB>*\06;\05\0a\06Q\06\01\05\10\03\05\0bY\08\02\1db\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\13:\06\0a\06\14\1c,\04\17\80\b9<dS\0cH\09\0aFE\1bH\08S\0dI\07\0a\80\b6\22\0e\0a\06F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\07;\03\1dU\01\0f2\0d\83\9bfu\0b\80\c4\8aLc\0d\840\10\16\0a\8f\9b\05\82G\9a\b9:\86\c6\829\07*\04\5c\06&\0aF\0a(\05\13\81\b0:\80\c6[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6)\0a\a2\e7\813\0f\01\1d\06\0e\04\08\81\8c\89\04k\05\0d\03\09\07\10\8f`\80\fa\06\81\b4LG\09t<\80\f6\0as\08p\15Fz\14\0c\14\0cW\09\19\80\87\81G\03\85B\0f\15\84P\1f\06\06\80\d5+\05>!\01p-\03\1a\04\02\81@\1f\11:\05\01\81\d0*\80\d6+\04\01\81\e0\80\f7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\04\11\03\0d\03w\04_\06\0c\04\01\0f\0c\048\08\0a\06(\08,\04\02>\81T\0c\1d\03\0a\058\07\1c\06\09\07\80\fa\84\06\00\01\03\05\05\06\06\02\07\06\08\07\09\11\0a\1c\0b\19\0c\1a\0d\10\0e\0c\0f\04\10\03\12\12\13\09\16\01\17\04\18\01\19\03\1a\07\1b\01\1c\02\1f\16 \03+\03-\0b.\010\041\022\01\a7\04\a9\02\aa\04\ab\08\fa\02\fb\05\fd\02\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\dd\0e\0fKL\fb\fc./?\5c]_\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11):;EIW[\5c^_de\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80mq\de\df\0e\1fno\1c\1d_}~\ae\afM\bb\bc\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96&./\a7\af\b7\bf\c7\cf\d7\df\9a\00@\97\980\8f\1f\ce\cf\d2\d4\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91Sgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab\05\1f\08\81\1c\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05N\07\1b\07W\07\02\06\17\0cP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\16\09\18\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06/1\80\f4\08<\03\0f\03>\058\08+\05\82\ff\11\18\08/\11-\03!\0f!\0f\80\8c\04\82\9a\16\0b\15\88\94\05/\05;\07\02\0e\18\09\80\be\22t\0c\80\d6\1a\81\10\05\80\e1\09\f2\9e\037\09\81\5c\14\80\b8\08\80\dd\15;\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a6\10\81\f5\07\01 *\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\00\00\a6\01\10\00%\00\00\00\1a\00\00\006\00\00\00\a6\01\10\00%\00\00\00\0a\00\00\00+\00\00\00index out of bounds: the len is  but the index is \00\00\a8>\10\00 \00\00\00\c8>\10\00\12\00\00\00==!=matchesassertion `left  right` failed\0a  left: \0a right: \00\f7>\10\00\10\00\00\00\07?\10\00\17\00\00\00\1e?\10\00\09\00\00\00 right` failed: \0a  left: \00\00\00\f7>\10\00\10\00\00\00@?\10\00\10\00\00\00P?\10\00\09\00\00\00\1e?\10\00\09\00\00\00..RefCell already borrowed    \00\00\ec>\10\00\ee>\10\00\f0>\10\00\02\00\00\00\02\00\00\00\07\00\00\00")
  (data $.data (i32.const 1064884) "\01\00\00\00\ff\ff\ff\ff\91\03\10\00"))
