(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i64 i64 i64 i64 i64 i64 i64 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i64 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32)))
  (type (;13;) (func (param i32 i64 i64 i64 i64 i64 i64 i64) (result i32)))
  (import "wasi_snapshot_preview1" "lind_syscall" (func $__imported_wasi_snapshot_preview1_lind_syscall (type 1)))
  (func $__wasm_call_dtors (type 2)
    return)
  (func $_start (type 2)
    call $__libc_setup_tls
    call $__wasi_init_tp
    call $__original_main
    drop
    return)
  (func $__original_main (type 3) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    i32.const 1310
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.set 5
    local.get 5
    call $__strlen
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=4
    local.get 2
    i32.load offset=8
    local.set 7
    local.get 2
    i32.load offset=4
    local.set 8
    i32.const 1
    local.set 9
    local.get 9
    local.get 7
    local.get 8
    call $__libc_write
    drop
    i32.const 0
    local.set 10
    i32.const 16
    local.set 11
    local.get 2
    local.get 11
    i32.add
    local.set 12
    local.get 12
    global.set $__stack_pointer
    local.get 10
    return)
  (func $__libc_write (type 4) (param i32 i32 i32) (result i32)
    i32.const 13
    i32.const 1081
    i64.extend_i32_u
    local.get 0
    i64.extend_i32_s
    local.get 1
    i64.extend_i32_u
    local.get 2
    i64.extend_i32_u
    i64.const -2401053088876216593
    i64.const -2401053088876216593
    i64.const -2401053088876216593
    call $lind_syscall)
  (func $__strlen (type 5) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const -4
      i32.and
      local.tee 1
      i32.load
      local.tee 2
      i32.const 2139062143
      i32.and
      i32.const 2139062143
      i32.add
      local.get 2
      i32.or
      i32.const -1
      i32.xor
      i32.const -2139062144
      i32.and
      local.get 0
      i32.const 3
      i32.shl
      i32.shr_u
      local.tee 2
      br_if 0 (;@1;)
      local.get 1
      i32.const 4
      i32.add
      local.set 2
      local.get 1
      local.get 0
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 2
        i32.load
        local.set 0
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 0
        i32.const -1
        i32.xor
        local.get 0
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 0
      i32.ctz
      i32.const 3
      i32.shr_u
      local.get 1
      i32.add
      return
    end
    local.get 2
    i32.ctz
    i32.const 3
    i32.shr_u)
  (func $__wasi_init_tp (type 2)
    (local i32)
    i32.const 7616
    i32.const 2
    i32.store offset=28
    i32.const 0
    i32.const 7616
    i32.store offset=7616
    i32.const 7616
    i32.const 0
    i32.store offset=56
    i32.const 7616
    i32.const 75552
    i32.store offset=48
    i32.const 7616
    i32.const 8832
    i32.store offset=92
    i32.const 7616
    i32.const 1073741823
    i32.store offset=20
    i32.const 7616
    i32.const 7616
    i32.const 72
    i32.add
    i32.store offset=72
    i32.const 7616
    i32.const 75552
    i32.const 10016
    i32.sub
    local.tee 0
    i32.store offset=52
    i32.const 7616
    i32.const 0
    i32.load offset=8860
    i32.store offset=12
    i32.const 0
    local.get 0
    i32.const 8388608
    local.get 0
    i32.const 8388608
    i32.lt_u
    select
    i32.store offset=2208
    i32.const 7616
    i32.const 7616
    i32.store offset=8
    i32.const 7616
    i32.const 7616
    i32.store offset=4)
  (func $_itoa_word (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 1408
    i32.const 1456
    local.get 3
    select
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -8
              i32.add
              br_table 2 (;@3;) 3 (;@2;) 0 (;@5;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 1 (;@4;) 3 (;@2;)
            end
            loop  ;; label = @5
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              local.get 3
              local.get 0
              local.get 0
              i32.const 10
              i32.div_u
              local.tee 2
              i32.const 10
              i32.mul
              i32.sub
              i32.add
              i32.load8_u
              i32.store8
              local.get 0
              i32.const 10
              i32.lt_u
              local.set 4
              local.get 2
              local.set 0
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            local.get 3
            local.get 0
            i32.const 15
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 16
            i32.lt_u
            local.set 2
            local.get 0
            i32.const 4
            i32.shr_u
            local.set 0
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        loop  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          local.get 3
          local.get 0
          i32.const 7
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 0
          i32.const 8
          i32.lt_u
          local.set 2
          local.get 0
          i32.const 3
          i32.shr_u
          local.set 0
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 3
        local.get 0
        local.get 0
        local.get 2
        i32.div_u
        local.tee 4
        local.get 2
        i32.mul
        i32.sub
        i32.add
        i32.load8_u
        i32.store8
        local.get 0
        local.get 2
        i32.ge_u
        local.set 5
        local.get 4
        local.set 0
        local.get 5
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func $_itoa (type 7) (param i64 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 4
    i32.const 1408
    i32.const 1456
    local.get 3
    select
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const -8
            i32.add
            br_table 0 (;@4;) 2 (;@2;) 2 (;@2;) 2 (;@2;) 2 (;@2;) 2 (;@2;) 2 (;@2;) 2 (;@2;) 1 (;@3;) 2 (;@2;)
          end
          local.get 0
          i32.wrap_i64
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.tee 6
              br_if 0 (;@5;)
              local.get 1
              local.set 7
              br 1 (;@4;)
            end
            local.get 1
            i32.const -1
            i32.add
            local.get 5
            local.get 3
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -2
            i32.add
            local.get 5
            local.get 3
            i32.const 3
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -3
            i32.add
            local.get 5
            local.get 3
            i32.const 6
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -4
            i32.add
            local.get 5
            local.get 3
            i32.const 9
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -5
            i32.add
            local.get 5
            local.get 3
            i32.const 12
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -6
            i32.add
            local.get 5
            local.get 3
            i32.const 15
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -7
            i32.add
            local.get 5
            local.get 3
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -8
            i32.add
            local.get 5
            local.get 3
            i32.const 21
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -9
            i32.add
            local.get 5
            local.get 3
            i32.const 24
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const -10
            i32.add
            local.tee 7
            local.get 5
            local.get 3
            i32.const 27
            i32.shr_u
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            i32.const 30
            i32.shr_u
            local.get 6
            i32.const 2
            i32.shl
            i32.const 4
            i32.and
            i32.or
            local.set 3
            local.get 6
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const -11
            i32.add
            local.tee 7
            local.get 5
            local.get 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 6
            i32.const 1
            i32.shr_u
            local.set 3
          end
          loop  ;; label = @4
            local.get 7
            i32.const -1
            i32.add
            local.tee 7
            local.get 5
            local.get 3
            i32.const 7
            i32.and
            i32.add
            i32.load8_u
            i32.store8
            local.get 3
            i32.const 8
            i32.lt_u
            local.set 6
            local.get 3
            i32.const 3
            i32.shr_u
            local.set 3
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 0
        i32.wrap_i64
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 3
            br_if 0 (;@4;)
            local.get 6
            local.set 3
            local.get 1
            local.set 7
            br 1 (;@3;)
          end
          local.get 1
          i32.const -1
          i32.add
          local.get 5
          local.get 6
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 1
          i32.const -8
          i32.add
          local.tee 7
          local.get 5
          local.get 6
          i32.const 28
          i32.shr_u
          i32.add
          i32.load8_u
          i32.store8
          local.get 1
          i32.const -2
          i32.add
          local.get 5
          local.get 6
          i32.const 4
          i32.shr_u
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 1
          i32.const -3
          i32.add
          local.get 5
          local.get 6
          i32.const 8
          i32.shr_u
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 1
          i32.const -4
          i32.add
          local.get 5
          local.get 6
          i32.const 12
          i32.shr_u
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 1
          i32.const -5
          i32.add
          local.get 5
          local.get 6
          i32.const 16
          i32.shr_u
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 1
          i32.const -6
          i32.add
          local.get 5
          local.get 6
          i32.const 20
          i32.shr_u
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 1
          i32.const -7
          i32.add
          local.get 5
          local.get 6
          i32.const 24
          i32.shr_u
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
        end
        loop  ;; label = @3
          local.get 7
          i32.const -1
          i32.add
          local.tee 7
          local.get 5
          local.get 3
          i32.const 15
          i32.and
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 16
          i32.lt_u
          local.set 6
          local.get 3
          i32.const 4
          i32.shr_u
          local.set 3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 2
      i32.const -2
      i32.add
      local.tee 8
      i32.const 20
      i32.mul
      i32.const 1504
      i32.add
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          local.tee 10
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 20
          i32.mul
          local.tee 7
          i32.const 1516
          i32.add
          i32.load
          local.tee 11
          local.get 7
          i32.const 1512
          i32.add
          i32.load8_s
          local.tee 6
          i32.shl
          local.set 3
          block  ;; label = @4
            local.get 11
            local.get 10
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const 32
            local.get 6
            i32.sub
            local.tee 12
            i64.extend_i32_u
            i64.shr_u
            i32.wrap_i64
            local.tee 13
            local.get 7
            i32.const 1520
            i32.add
            i32.load
            local.tee 10
            i32.const 65535
            i32.and
            local.tee 7
            local.get 0
            i32.const 64
            local.get 6
            i32.sub
            i64.extend_i32_u
            i64.shr_u
            i32.wrap_i64
            i32.const 0
            local.get 6
            select
            local.tee 14
            i32.const 16
            i32.shr_u
            local.tee 11
            i32.mul
            local.tee 15
            local.get 10
            i32.const 16
            i32.shr_u
            local.tee 10
            local.get 14
            i32.const 65535
            i32.and
            local.tee 16
            i32.mul
            i32.add
            local.get 7
            local.get 16
            i32.mul
            i32.const 16
            i32.shr_u
            i32.add
            local.tee 16
            i32.const 16
            i32.shr_u
            local.get 14
            i32.add
            local.get 10
            local.get 11
            i32.mul
            local.tee 11
            i32.const 65536
            i32.add
            local.get 11
            local.get 16
            local.get 15
            i32.lt_u
            select
            i32.add
            local.tee 16
            i32.const 16
            i32.shr_u
            local.tee 17
            local.get 3
            i32.const 65535
            i32.and
            local.tee 11
            i32.mul
            local.tee 18
            local.get 16
            i32.const 65535
            i32.and
            local.tee 19
            local.get 3
            i32.const 16
            i32.shr_u
            local.tee 15
            i32.mul
            i32.add
            local.get 19
            local.get 11
            i32.mul
            local.tee 20
            i32.const 16
            i32.shr_u
            i32.add
            local.tee 19
            i32.const 16
            i32.shl
            local.get 20
            i32.const 65535
            i32.and
            i32.or
            local.tee 21
            i32.sub
            local.set 20
            block  ;; label = @5
              block  ;; label = @6
                local.get 14
                local.get 19
                i32.const 16
                i32.shr_u
                local.get 17
                local.get 15
                i32.mul
                local.tee 17
                i32.const 65536
                i32.add
                local.get 17
                local.get 19
                local.get 18
                i32.lt_u
                select
                i32.add
                i32.sub
                local.get 13
                local.get 21
                i32.lt_u
                i32.sub
                local.tee 19
                br_if 0 (;@6;)
                local.get 20
                local.set 14
                br 1 (;@5;)
              end
              local.get 20
              local.get 3
              i32.sub
              local.set 14
              block  ;; label = @6
                local.get 19
                local.get 20
                local.get 3
                i32.lt_u
                i32.ne
                br_if 0 (;@6;)
                local.get 16
                i32.const 1
                i32.add
                local.set 16
                br 1 (;@5;)
              end
              local.get 16
              i32.const 2
              i32.add
              local.set 16
              local.get 14
              local.get 3
              i32.sub
              local.set 14
            end
            local.get 0
            i32.wrap_i64
            local.get 6
            i32.shl
            local.tee 18
            local.get 14
            local.get 3
            i32.const 0
            local.get 14
            local.get 3
            i32.ge_u
            local.tee 13
            select
            i32.sub
            local.tee 19
            i32.const 16
            i32.shr_u
            local.tee 14
            local.get 7
            i32.mul
            local.tee 20
            local.get 19
            i32.const 65535
            i32.and
            local.tee 17
            local.get 10
            i32.mul
            i32.add
            local.get 17
            local.get 7
            i32.mul
            i32.const 16
            i32.shr_u
            i32.add
            local.tee 17
            i32.const 16
            i32.shr_u
            local.get 19
            i32.add
            local.get 14
            local.get 10
            i32.mul
            local.tee 14
            i32.const 65536
            i32.add
            local.get 14
            local.get 17
            local.get 20
            i32.lt_u
            select
            i32.add
            local.tee 14
            i32.const 16
            i32.shr_u
            local.tee 21
            local.get 11
            i32.mul
            local.tee 22
            local.get 14
            i32.const 65535
            i32.and
            local.tee 20
            local.get 15
            i32.mul
            i32.add
            local.get 20
            local.get 11
            i32.mul
            local.tee 17
            i32.const 16
            i32.shr_u
            i32.add
            local.tee 20
            i32.const 16
            i32.shl
            local.get 17
            i32.const 65535
            i32.and
            i32.or
            local.tee 23
            i32.sub
            local.set 17
            local.get 16
            local.get 13
            i32.add
            local.set 13
            block  ;; label = @5
              block  ;; label = @6
                local.get 19
                local.get 20
                i32.const 16
                i32.shr_u
                local.get 21
                local.get 15
                i32.mul
                local.tee 16
                i32.const 65536
                i32.add
                local.get 16
                local.get 20
                local.get 22
                i32.lt_u
                select
                i32.add
                i32.sub
                local.get 18
                local.get 23
                i32.lt_u
                i32.sub
                local.tee 19
                br_if 0 (;@6;)
                local.get 17
                local.set 16
                br 1 (;@5;)
              end
              local.get 17
              local.get 3
              i32.sub
              local.set 16
              block  ;; label = @6
                local.get 19
                local.get 17
                local.get 3
                i32.lt_u
                i32.ne
                br_if 0 (;@6;)
                local.get 14
                i32.const 1
                i32.add
                local.set 14
                br 1 (;@5;)
              end
              local.get 14
              i32.const 2
              i32.add
              local.set 14
              local.get 16
              local.get 3
              i32.sub
              local.set 16
            end
            local.get 4
            local.get 16
            local.get 3
            i32.const 0
            local.get 16
            local.get 3
            i32.ge_u
            local.tee 19
            select
            i32.sub
            local.get 6
            i32.shr_u
            i32.store offset=12
            local.get 14
            local.get 19
            i32.add
            local.tee 16
            local.get 6
            i32.shl
            local.tee 14
            local.get 16
            local.get 12
            i32.shr_u
            local.get 13
            local.get 6
            i32.shl
            i32.or
            local.get 13
            local.get 6
            select
            local.tee 16
            i32.const 16
            i32.shr_u
            local.tee 19
            local.get 7
            i32.mul
            local.tee 20
            local.get 16
            i32.const 65535
            i32.and
            local.tee 13
            local.get 10
            i32.mul
            i32.add
            local.get 13
            local.get 7
            i32.mul
            i32.const 16
            i32.shr_u
            i32.add
            local.tee 7
            i32.const 16
            i32.shr_u
            local.get 16
            i32.add
            local.get 19
            local.get 10
            i32.mul
            local.tee 10
            i32.const 65536
            i32.add
            local.get 10
            local.get 7
            local.get 20
            i32.lt_u
            select
            i32.add
            local.tee 7
            i32.const 16
            i32.shr_u
            local.tee 19
            local.get 11
            i32.mul
            local.tee 20
            local.get 7
            i32.const 65535
            i32.and
            local.tee 10
            local.get 15
            i32.mul
            i32.add
            local.get 10
            local.get 11
            i32.mul
            local.tee 11
            i32.const 16
            i32.shr_u
            i32.add
            local.tee 10
            i32.const 16
            i32.shl
            local.get 11
            i32.const 65535
            i32.and
            i32.or
            local.tee 13
            i32.sub
            local.set 11
            block  ;; label = @5
              block  ;; label = @6
                local.get 16
                local.get 10
                i32.const 16
                i32.shr_u
                local.get 19
                local.get 15
                i32.mul
                local.tee 15
                i32.const 65536
                i32.add
                local.get 15
                local.get 10
                local.get 20
                i32.lt_u
                select
                i32.add
                i32.sub
                local.get 14
                local.get 13
                i32.lt_u
                i32.sub
                local.tee 15
                br_if 0 (;@6;)
                local.get 11
                local.set 10
                br 1 (;@5;)
              end
              local.get 11
              local.get 3
              i32.sub
              local.set 10
              block  ;; label = @6
                local.get 15
                local.get 11
                local.get 3
                i32.lt_u
                i32.ne
                br_if 0 (;@6;)
                local.get 7
                i32.const 1
                i32.add
                local.set 7
                br 1 (;@5;)
              end
              local.get 7
              i32.const 2
              i32.add
              local.set 7
              local.get 10
              local.get 3
              i32.sub
              local.set 10
            end
            local.get 4
            local.get 7
            local.get 10
            local.get 3
            i32.ge_u
            local.tee 11
            i32.add
            i32.store offset=4
            local.get 4
            local.get 10
            local.get 3
            i32.const 0
            local.get 11
            select
            i32.sub
            local.get 6
            i32.shr_u
            i32.store offset=8
            i32.const 3
            local.set 19
            br 2 (;@2;)
          end
          local.get 6
          i32.const 255
          i32.and
          local.set 15
          local.get 0
          local.get 6
          i64.extend_i32_u
          i64.shl
          local.tee 0
          i32.wrap_i64
          local.tee 16
          local.get 7
          i32.const 1520
          i32.add
          i32.load
          local.tee 6
          i32.const 65535
          i32.and
          local.tee 10
          local.get 0
          i64.const 48
          i64.shr_u
          i32.wrap_i64
          local.tee 11
          i32.mul
          local.tee 14
          local.get 6
          i32.const 16
          i32.shr_u
          local.tee 6
          local.get 0
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          local.tee 7
          i32.const 65535
          i32.and
          local.tee 19
          i32.mul
          i32.add
          local.get 10
          local.get 19
          i32.mul
          i32.const 16
          i32.shr_u
          i32.add
          local.tee 10
          i32.const 16
          i32.shr_u
          local.get 7
          i32.add
          local.get 6
          local.get 11
          i32.mul
          local.tee 6
          i32.const 65536
          i32.add
          local.get 6
          local.get 10
          local.get 14
          i32.lt_u
          select
          i32.add
          local.tee 6
          i32.const 16
          i32.shr_u
          local.tee 14
          local.get 3
          i32.const 65535
          i32.and
          local.tee 10
          i32.mul
          local.tee 19
          local.get 6
          i32.const 65535
          i32.and
          local.tee 11
          local.get 3
          i32.const 16
          i32.shr_u
          local.tee 20
          i32.mul
          i32.add
          local.get 11
          local.get 10
          i32.mul
          local.tee 11
          i32.const 16
          i32.shr_u
          i32.add
          local.tee 10
          i32.const 16
          i32.shl
          local.get 11
          i32.const 65535
          i32.and
          i32.or
          local.tee 13
          i32.sub
          local.set 11
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 10
              i32.const 16
              i32.shr_u
              local.get 14
              local.get 20
              i32.mul
              local.tee 14
              i32.const 65536
              i32.add
              local.get 14
              local.get 10
              local.get 19
              i32.lt_u
              select
              i32.add
              i32.sub
              local.get 16
              local.get 13
              i32.lt_u
              i32.sub
              local.tee 10
              br_if 0 (;@5;)
              local.get 11
              local.set 7
              br 1 (;@4;)
            end
            local.get 11
            local.get 3
            i32.sub
            local.set 7
            block  ;; label = @5
              local.get 10
              local.get 11
              local.get 3
              i32.lt_u
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              br 1 (;@4;)
            end
            local.get 6
            i32.const 2
            i32.add
            local.set 6
            local.get 7
            local.get 3
            i32.sub
            local.set 7
          end
          local.get 4
          local.get 6
          local.get 7
          local.get 3
          i32.ge_u
          local.tee 10
          i32.add
          i32.store offset=4
          local.get 4
          local.get 7
          local.get 3
          i32.const 0
          local.get 10
          select
          i32.sub
          local.get 15
          i32.shr_u
          i32.store offset=8
          i32.const 2
          local.set 19
          br 1 (;@2;)
        end
        local.get 4
        local.get 0
        i64.store32 offset=4
        i32.const 1
        local.set 19
      end
      local.get 8
      i32.const 20
      i32.mul
      local.tee 3
      i32.const 1513
      i32.add
      local.set 20
      local.get 3
      i32.const 1509
      i32.add
      local.set 13
      local.get 9
      i32.load
      local.tee 3
      i32.const 16
      i32.shr_u
      local.set 6
      local.get 3
      i32.const 65535
      i32.and
      local.set 9
      i64.const 24057851802
      local.get 8
      i64.extend_i32_u
      i64.shr_u
      i64.const 1
      i64.and
      local.set 0
      local.get 1
      local.set 7
      loop  ;; label = @2
        local.get 4
        i32.const 4
        i32.add
        local.get 19
        i32.const -1
        i32.add
        local.tee 19
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i64.eqz
              br_if 0 (;@5;)
              local.get 3
              br_if 1 (;@4;)
              i32.const 0
              local.set 3
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 13
            i32.load8_s
            i32.const -1
            i32.add
            local.set 16
            i32.const 0
            local.set 10
            loop  ;; label = @5
              local.get 10
              i32.const -1
              i32.add
              local.tee 10
              local.get 7
              i32.add
              local.tee 14
              local.get 5
              local.get 3
              local.get 3
              local.get 3
              i32.const 16
              i32.shr_u
              local.tee 8
              local.get 6
              i32.mul
              local.tee 11
              i32.const 65536
              i32.add
              local.get 11
              local.get 8
              local.get 9
              i32.mul
              local.tee 8
              local.get 3
              i32.const 65535
              i32.and
              local.tee 15
              local.get 6
              i32.mul
              i32.add
              local.get 15
              local.get 9
              i32.mul
              i32.const 16
              i32.shr_u
              i32.add
              local.tee 15
              local.get 8
              i32.lt_u
              select
              local.get 15
              i32.const 16
              i32.shr_u
              i32.add
              local.tee 8
              i32.sub
              i32.const 1
              i32.shr_u
              local.get 8
              i32.add
              local.get 16
              i32.shr_u
              local.tee 8
              local.get 2
              i32.mul
              i32.sub
              i32.add
              i32.load8_u
              i32.store8
              local.get 8
              local.set 3
              local.get 8
              br_if 0 (;@5;)
            end
            i32.const 0
            local.get 10
            i32.sub
            local.set 3
            local.get 14
            local.set 7
            br 1 (;@3;)
          end
          local.get 13
          i32.load8_u
          local.set 16
          i32.const 0
          local.set 10
          loop  ;; label = @4
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            local.get 7
            i32.add
            local.tee 14
            local.get 5
            local.get 3
            local.get 3
            i32.const 16
            i32.shr_u
            local.tee 8
            local.get 6
            i32.mul
            local.tee 11
            i32.const 65536
            i32.add
            local.get 11
            local.get 8
            local.get 9
            i32.mul
            local.tee 8
            local.get 3
            i32.const 65535
            i32.and
            local.tee 15
            local.get 6
            i32.mul
            i32.add
            local.get 15
            local.get 9
            i32.mul
            i32.const 16
            i32.shr_u
            i32.add
            local.tee 15
            local.get 8
            i32.lt_u
            select
            local.get 15
            i32.const 16
            i32.shr_u
            i32.add
            local.get 16
            i32.shr_u
            local.tee 8
            local.get 2
            i32.mul
            i32.sub
            i32.add
            i32.load8_u
            i32.store8
            local.get 8
            local.set 3
            local.get 8
            br_if 0 (;@4;)
          end
          i32.const 0
          local.get 10
          i32.sub
          local.set 3
          local.get 14
          local.set 7
        end
        block  ;; label = @3
          local.get 19
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 20
          i32.load8_s
          local.tee 8
          i32.ge_s
          br_if 1 (;@2;)
          local.get 7
          local.get 3
          local.get 8
          i32.sub
          i32.add
          local.tee 7
          i32.const 48
          local.get 8
          local.get 3
          i32.sub
          memory.fill
          br 1 (;@2;)
        end
      end
      local.get 7
      local.get 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const -1
      i32.add
      local.tee 7
      i32.const 48
      i32.store8
    end
    local.get 7)
  (func $__strchrnul (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const -4
      i32.and
      local.tee 2
      i32.load
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 4
      i32.xor
      local.tee 1
      i32.const 2139062143
      i32.and
      i32.const 2139062143
      i32.add
      local.get 1
      i32.or
      i32.const -1
      i32.xor
      local.get 3
      i32.const 2139062143
      i32.and
      i32.const 2139062143
      i32.add
      local.get 3
      i32.or
      i32.const -1
      i32.xor
      i32.or
      i32.const -2139062144
      i32.and
      local.get 0
      i32.const 3
      i32.shl
      i32.shr_u
      local.tee 3
      br_if 0 (;@1;)
      local.get 2
      local.set 0
      loop  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        local.tee 0
        i32.load
        local.tee 3
        local.get 4
        i32.xor
        local.tee 1
        i32.const -1
        i32.xor
        local.get 1
        i32.const -16843009
        i32.add
        i32.and
        local.get 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.or
        i32.const -2139062144
        i32.and
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    i32.ctz
    i32.const 3
    i32.shr_u
    i32.add)
  (func $__writev (type 4) (param i32 i32 i32) (result i32)
    i32.const 107
    i32.const 1024
    i64.extend_i32_u
    local.get 0
    i64.extend_i32_s
    local.get 1
    i64.extend_i32_u
    local.get 2
    i64.extend_i32_s
    i64.const -2401053088876216593
    i64.const -2401053088876216593
    i64.const -2401053088876216593
    call $lind_syscall)
  (func $__errno_location (type 3) (result i32)
    i32.const 8864)
  (func $__mmap (type 9) (param i32 i32 i32 i32 i32 i32) (result i32)
    i32.const 21
    i32.const 1054
    i64.extend_i32_u
    local.get 0
    i64.extend_i32_u
    local.get 1
    i64.extend_i32_u
    local.get 2
    i64.extend_i32_s
    local.get 3
    i64.extend_i32_s
    local.get 4
    i64.extend_i32_s
    local.get 5
    i64.extend_i32_s
    call $lind_syscall)
  (func $__prctl_time64 (type 8) (param i32 i32) (result i32)
    i32.const 0)
  (func $abort (type 2)
    unreachable)
  (func $__GI___munmap (type 8) (param i32 i32) (result i32)
    i32.const 22
    i32.const 1039
    i64.extend_i32_u
    local.get 0
    i64.extend_i32_u
    local.get 1
    i64.extend_i32_u
    i64.const -2401053088876216593
    i64.const -2401053088876216593
    i64.const -2401053088876216593
    i64.const -2401053088876216593
    call $lind_syscall)
  (func $__libc_message_impl (type 10) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=76
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      local.get 2
      i32.load offset=76
      local.set 4
      i32.const 1
      local.set 5
      i32.const 0
      local.set 6
      loop  ;; label = @2
        local.get 1
        local.set 7
        local.get 5
        local.set 8
        local.get 3
        local.set 9
        local.get 0
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.const 255
              i32.and
              i32.const 37
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              i32.load8_u offset=1
              i32.const 115
              i32.eq
              br_if 2 (;@3;)
            end
            local.get 1
            i32.const 1
            i32.add
            i32.const 37
            call $__strchrnul
            local.tee 1
            i32.load8_u
            local.tee 9
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.and
            i32.const 37
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.load8_u offset=1
            i32.const 115
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            local.get 4
            i32.const 4
            i32.add
            local.tee 1
            i32.store offset=76
            local.get 0
            i32.const 2
            i32.add
            local.set 0
            local.get 4
            i32.load
            local.tee 3
            call $__strlen
            local.set 9
            local.get 1
            local.set 4
            br 1 (;@3;)
          end
          local.get 1
          local.get 0
          i32.sub
          local.set 9
          local.get 0
          local.set 3
          local.get 1
          local.set 0
        end
        local.get 2
        i32.const 16
        i32.add
        local.get 7
        i32.const 3
        i32.shl
        i32.add
        local.tee 1
        local.get 9
        i32.store offset=4
        local.get 1
        local.get 3
        i32.store
        local.get 8
        i32.const 1
        i32.add
        local.set 5
        local.get 7
        i32.const 1
        i32.add
        local.set 1
        local.get 9
        local.get 6
        i32.add
        local.set 6
        local.get 0
        i32.load8_u
        local.tee 3
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 2
          local.get 2
          i32.const 16
          i32.add
          local.get 1
          call $__writev
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
          call $__errno_location
          i32.load
          i32.const 4
          i32.eq
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      local.set 0
      i32.const 0
      i32.const 0
      i32.load offset=6904
      local.tee 1
      local.get 6
      i32.add
      i32.const 0
      local.get 1
      i32.sub
      i32.and
      local.tee 5
      i32.const 3
      i32.const 34
      i32.const -1
      i32.const 0
      call $__mmap
      local.tee 6
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 6
      local.get 5
      i32.store
      local.get 6
      i32.const 4
      i32.add
      local.set 9
      local.get 7
      i32.const 1
      i32.add
      i32.const 1
      i32.and
      local.set 4
      block  ;; label = @2
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const -2
        i32.and
        local.set 7
        i32.const 0
        local.set 0
        local.get 2
        i32.const 16
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 9
          local.get 1
          i32.load
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.tee 3
          memory.copy
          local.get 9
          local.get 3
          i32.add
          local.tee 9
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.get 1
          i32.const 12
          i32.add
          i32.load
          local.tee 3
          memory.copy
          local.get 9
          local.get 3
          i32.add
          local.set 9
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 7
          local.get 0
          i32.const 2
          i32.add
          local.tee 0
          i32.ne
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        local.get 2
        i32.const 16
        i32.add
        local.get 0
        i32.const 3
        i32.shl
        i32.add
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        local.tee 1
        memory.copy
        local.get 9
        local.get 1
        i32.add
        local.set 9
      end
      local.get 9
      i32.const 0
      i32.store8
      local.get 2
      i32.const 1067
      i32.store offset=12
      local.get 2
      local.get 5
      i32.store offset=8
      local.get 2
      local.get 6
      i32.store offset=4
      local.get 2
      i32.const 0
      i32.store
      i32.const 1398164801
      local.get 2
      call $__prctl_time64
      drop
      i32.const 0
      i32.load offset=8868
      local.set 1
      i32.const 0
      local.get 6
      i32.store offset=8868
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.load
      call $__GI___munmap
      drop
    end
    call $abort
    unreachable)
  (func $__libc_assert_fail (type 11) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 0
    i32.store8 offset=31
    local.get 2
    local.get 4
    i32.const 21
    i32.add
    i32.const 10
    i32.add
    i32.const 10
    i32.const 0
    call $_itoa_word
    local.set 2
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 3
    i32.store offset=8
    local.get 4
    local.get 2
    i32.store offset=4
    local.get 4
    local.get 1
    i32.store
    i32.const 1257
    local.get 4
    call $__libc_message_impl
    unreachable)
  (func $__sbrk (type 5) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    memory.size
    i32.const 16
    i32.shl
    local.tee 1
    i32.store offset=8872
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.add
        local.tee 0
        memory.size
        i32.const 16
        i32.shl
        local.tee 2
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.sub
        i32.const 65536
        i32.div_s
        memory.grow
        drop
      end
      i32.const 0
      local.get 0
      i32.store offset=8872
    end
    local.get 1)
  (func $__getpid (type 3) (result i32)
    i32.const 0)
  (func $_exit (type 0) (param i32)
    unreachable
    unreachable)
  (func $_dl_debug_vdprintf (type 12) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 1168
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                i32.const -10
                i32.xor
                local.set 4
                local.get 3
                i32.const 16
                i32.add
                i32.const 10
                i32.or
                local.set 5
                local.get 3
                i32.const 4
                i32.add
                i32.const 10
                i32.add
                local.set 6
                i32.const 0
                local.set 7
                i32.const 0
                local.set 8
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 1
                    i32.lt_s
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 7
                      br_if 0 (;@9;)
                      call $__getpid
                      local.tee 7
                      i32.const -1
                      i32.le_s
                      br_if 4 (;@5;)
                      block  ;; label = @10
                        local.get 7
                        i64.extend_i32_u
                        local.get 6
                        i32.const 10
                        i32.const 0
                        call $_itoa
                        local.tee 9
                        local.get 3
                        i32.const 4
                        i32.add
                        i32.le_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 4
                        i32.add
                        i32.const 32
                        local.get 9
                        local.get 3
                        i32.const 4
                        i32.add
                        i32.sub
                        memory.fill
                      end
                      local.get 3
                      i32.const 2362
                      i32.store16 offset=14 align=1
                    end
                    local.get 8
                    i32.const 64
                    i32.ge_s
                    br_if 4 (;@4;)
                    local.get 3
                    i32.const 656
                    i32.add
                    local.get 8
                    i32.const 3
                    i32.shl
                    i32.add
                    local.tee 9
                    i32.const 12
                    i32.store offset=4
                    local.get 9
                    local.get 3
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 8
                    i32.const 1
                    i32.add
                    local.set 8
                    i32.const -1
                    local.set 0
                  end
                  i32.const 0
                  local.set 9
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 1
                      local.get 9
                      i32.add
                      local.tee 10
                      i32.load8_u
                      local.tee 11
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 11
                      i32.const 37
                      i32.eq
                      br_if 1 (;@8;)
                      block  ;; label = @10
                        local.get 0
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 11
                        i32.const 10
                        i32.eq
                        br_if 2 (;@8;)
                      end
                      local.get 9
                      i32.const 1
                      i32.add
                      local.set 9
                      br 0 (;@9;)
                    end
                  end
                  local.get 8
                  i32.const 64
                  i32.ge_s
                  br_if 4 (;@3;)
                  local.get 3
                  i32.const 656
                  i32.add
                  local.get 8
                  i32.const 3
                  i32.shl
                  i32.add
                  local.tee 11
                  local.get 9
                  i32.store offset=4
                  block  ;; label = @8
                    local.get 9
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 1
                    i32.store
                    local.get 8
                    i32.const 1
                    i32.add
                    local.set 8
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 10
                        i32.load8_u
                        local.tee 11
                        i32.const 10
                        i32.eq
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 11
                          i32.const 37
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 10
                          local.set 1
                          br 3 (;@8;)
                        end
                        i32.const -1
                        local.set 12
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            local.get 9
                            i32.add
                            local.tee 9
                            i32.const 2
                            i32.add
                            local.get 9
                            i32.const 1
                            i32.add
                            local.tee 9
                            local.get 9
                            i32.load8_u
                            i32.const 48
                            i32.eq
                            local.tee 13
                            select
                            local.tee 10
                            i32.load8_u
                            local.tee 9
                            i32.const 42
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 2
                            local.set 1
                            local.get 10
                            local.set 11
                            i32.const -1
                            local.set 14
                            br 1 (;@11;)
                          end
                          local.get 2
                          i32.load
                          local.tee 14
                          i32.const 10
                          i32.ge_s
                          br_if 9 (;@2;)
                          local.get 10
                          i32.const 1
                          i32.add
                          local.set 11
                          local.get 2
                          i32.const 4
                          i32.add
                          local.set 1
                          local.get 10
                          i32.load8_u offset=1
                          local.set 9
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 9
                            i32.const 255
                            i32.and
                            i32.const 46
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 1
                            local.set 2
                            local.get 11
                            local.set 10
                            br 1 (;@11;)
                          end
                          local.get 11
                          i32.load8_u offset=1
                          i32.const 42
                          i32.ne
                          br_if 10 (;@1;)
                          local.get 11
                          i32.const 2
                          i32.add
                          local.set 10
                          local.get 1
                          i32.const 4
                          i32.add
                          local.set 2
                          local.get 11
                          i32.load8_u offset=2
                          local.set 9
                          local.get 1
                          i32.load
                          local.set 12
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 9
                            i32.const 255
                            i32.and
                            i32.const -108
                            i32.add
                            br_table 0 (;@12;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 1 (;@11;) 0 (;@12;) 1 (;@11;)
                          end
                          local.get 10
                          i32.load8_u offset=1
                          local.set 9
                          local.get 10
                          i32.const 1
                          i32.add
                          local.set 10
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 9
                                i32.extend8_s
                                local.tee 11
                                i32.const -100
                                i32.add
                                br_table 0 (;@14;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 13 (;@1;) 1 (;@13;) 13 (;@1;) 0 (;@14;) 13 (;@1;) 13 (;@1;) 0 (;@14;) 2 (;@12;)
                              end
                              i32.const 0
                              local.get 2
                              i32.load
                              local.tee 11
                              i32.sub
                              local.get 11
                              local.get 9
                              i32.const 255
                              i32.and
                              local.tee 9
                              i32.const 100
                              i32.eq
                              local.get 11
                              i32.const 0
                              i32.lt_s
                              i32.and
                              local.tee 1
                              select
                              i64.extend_i32_u
                              local.get 3
                              i32.const 16
                              i32.add
                              local.get 8
                              i32.const 10
                              i32.mul
                              local.tee 12
                              i32.add
                              i32.const 10
                              i32.add
                              local.tee 11
                              i32.const 16
                              i32.const 10
                              local.get 9
                              i32.const 120
                              i32.eq
                              select
                              i32.const 0
                              call $_itoa
                              local.set 9
                              block  ;; label = @14
                                local.get 14
                                i32.const -1
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 11
                                local.get 9
                                i32.sub
                                local.get 14
                                i32.ge_s
                                br_if 0 (;@14;)
                                local.get 9
                                local.get 5
                                i32.add
                                local.get 12
                                local.get 14
                                local.get 9
                                i32.add
                                local.tee 14
                                i32.sub
                                i32.add
                                local.tee 9
                                i32.const 48
                                i32.const 32
                                local.get 13
                                select
                                local.get 14
                                local.get 4
                                i32.add
                                local.get 12
                                i32.sub
                                memory.fill
                              end
                              block  ;; label = @14
                                local.get 1
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 9
                                i32.const -1
                                i32.add
                                local.tee 9
                                i32.const 45
                                i32.store8
                              end
                              local.get 2
                              i32.const 4
                              i32.add
                              local.set 2
                              local.get 3
                              i32.const 656
                              i32.add
                              local.get 8
                              i32.const 3
                              i32.shl
                              i32.add
                              local.tee 1
                              local.get 11
                              local.get 9
                              i32.sub
                              i32.store offset=4
                              local.get 1
                              local.get 9
                              i32.store
                              local.get 8
                              i32.const 1
                              i32.add
                              local.set 8
                              br 4 (;@9;)
                            end
                            local.get 3
                            i32.const 656
                            i32.add
                            local.get 8
                            i32.const 3
                            i32.shl
                            i32.add
                            local.tee 13
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.store
                            i32.const 0
                            local.set 9
                            loop  ;; label = @13
                              local.get 1
                              local.get 9
                              i32.add
                              local.set 11
                              local.get 9
                              i32.const 1
                              i32.add
                              local.tee 14
                              local.set 9
                              local.get 11
                              i32.load8_u
                              br_if 0 (;@13;)
                            end
                            local.get 13
                            local.get 14
                            i32.const -1
                            i32.add
                            local.tee 9
                            i32.store offset=4
                            local.get 2
                            i32.const 4
                            i32.add
                            local.set 2
                            local.get 12
                            i32.const -1
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 13
                            i32.const 4
                            i32.or
                            local.get 12
                            local.get 9
                            local.get 12
                            local.get 9
                            i32.lt_u
                            select
                            i32.store
                            local.get 8
                            i32.const 1
                            i32.add
                            local.set 8
                            br 3 (;@9;)
                          end
                          local.get 11
                          i32.const 37
                          i32.ne
                          br_if 10 (;@1;)
                          local.get 3
                          i32.const 656
                          i32.add
                          local.get 8
                          i32.const 3
                          i32.shl
                          i32.add
                          local.tee 9
                          i32.const 1
                          i32.store offset=4
                          local.get 9
                          local.get 10
                          i32.store
                        end
                        local.get 8
                        i32.const 1
                        i32.add
                        local.set 8
                        br 1 (;@9;)
                      end
                      block  ;; label = @10
                        local.get 9
                        br_if 0 (;@10;)
                        i32.const 1
                        local.set 0
                        local.get 3
                        i32.const 656
                        i32.add
                        local.get 8
                        i32.const 3
                        i32.shl
                        i32.add
                        local.tee 9
                        i32.const 1
                        i32.store offset=4
                        local.get 9
                        local.get 1
                        i32.store
                        local.get 8
                        i32.const 1
                        i32.add
                        local.set 8
                        br 1 (;@9;)
                      end
                      i32.const 1
                      local.set 0
                      local.get 8
                      i32.const 3
                      i32.shl
                      local.get 3
                      i32.const 656
                      i32.add
                      i32.add
                      i32.const -4
                      i32.add
                      local.tee 9
                      local.get 9
                      i32.load
                      i32.const 1
                      i32.add
                      i32.store
                    end
                    local.get 10
                    i32.const 1
                    i32.add
                    local.set 1
                    local.get 10
                    i32.load8_u offset=1
                    local.set 11
                  end
                  local.get 11
                  i32.const 255
                  i32.and
                  br_if 0 (;@7;)
                end
              end
              local.get 3
              i32.const 1168
              i32.add
              global.set $__stack_pointer
              return
            end
            i32.const 1139
            i32.const 1095
            i32.const 72
            i32.const 1171
            call $__libc_assert_fail
            unreachable
          end
          i32.const 1107
          i32.const 1095
          i32.const 81
          i32.const 1171
          call $__libc_assert_fail
          unreachable
        end
        i32.const 1107
        i32.const 1095
        i32.const 94
        i32.const 1171
        call $__libc_assert_fail
        unreachable
      end
      i32.const 1122
      i32.const 1095
      i32.const 121
      i32.const 1171
      call $__libc_assert_fail
      unreachable
    end
    i32.const 1228
    i32.const 1095
    i32.const 221
    i32.const 1171
    call $__libc_assert_fail
    unreachable)
  (func $_dl_fatal_printf (type 10) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 0
    local.get 0
    local.get 1
    call $_dl_debug_vdprintf
    i32.const 127
    call $_exit
    unreachable)
  (func $__tunable_get_val (type 12) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 112
              i32.mul
              local.tee 3
              i32.const 2272
              i32.add
              i32.load
              br_table 1 (;@4;) 0 (;@5;) 2 (;@3;) 3 (;@2;) 1 (;@4;)
            end
            local.get 1
            local.get 3
            i32.const 2304
            i32.add
            i64.load
            i64.store
            br 3 (;@1;)
          end
          local.get 1
          local.get 3
          i32.const 2304
          i32.add
          i64.load
          i64.store32
          br 2 (;@1;)
        end
        local.get 1
        local.get 3
        i32.const 2304
        i32.add
        i64.load
        i64.store32
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i32.const 2304
      i32.add
      i32.store
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 112
      i32.mul
      i32.const 2312
      i32.add
      i32.load8_u
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 112
      i32.mul
      i32.const 2304
      i32.add
      local.get 2
      call_indirect (type 0)
    end)
  (func $_dl_tls_static_surplus_init (type 0) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 22
    local.get 1
    i32.const 12
    i32.add
    i32.const 0
    call $__tunable_get_val
    local.get 1
    i32.load offset=12
    local.set 2
    i32.const 17
    local.get 1
    i32.const 12
    i32.add
    i32.const 0
    call $__tunable_get_val
    block  ;; label = @1
      local.get 2
      i32.eqz
      local.tee 3
      local.get 0
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.store offset=4
      local.get 1
      local.get 0
      i32.store
      i32.const 1343
      local.get 1
      call $_dl_fatal_printf
      unreachable
    end
    i32.const 0
    local.get 1
    i32.load offset=12
    local.tee 3
    i32.store offset=9480
    i32.const 0
    local.get 3
    local.get 2
    i32.const 0
    i32.ne
    local.get 0
    i32.add
    i32.const 288
    i32.mul
    i32.add
    i32.store offset=8940
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__tls_pre_init_tp (type 2)
    i32.const 0
    i32.const 8876
    i32.store offset=8876
    i32.const 0
    i32.const 8884
    i32.store offset=8884
    i32.const 0
    i32.const 8892
    i32.store offset=8892
    i32.const 8876
    i32.const 8876
    i32.store offset=4
    i32.const 8884
    i32.const 8884
    i32.store offset=4
    i32.const 8892
    i32.const 8892
    i32.store offset=4)
  (func $_dl_early_allocate (type 5) (param i32) (result i32)
    (local i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=8872
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      call $__sbrk
      local.tee 1
      local.get 1
      i32.const -1
      i32.eq
      select
      local.set 1
    end
    local.get 1)
  (func $__libc_setup_tls (type 2)
    (local i32 i32 i32)
    i32.const 0
    i32.load offset=6816
    local.set 0
    call $__tls_pre_init_tp
    i32.const 0
    call $_dl_tls_static_surplus_init
    i32.const 0
    i32.load offset=8940
    i32.const 63
    i32.add
    i32.const -64
    i32.and
    local.tee 1
    i32.const 1280
    i32.add
    call $_dl_early_allocate
    local.set 2
    i32.const 0
    i32.const 62
    i32.store offset=8944
    i32.const 0
    local.get 2
    local.get 1
    i32.add
    local.tee 1
    i32.store offset=8960
    i32.const 0
    i32.const 0
    i32.store offset=8964
    local.get 1
    i32.const 8952
    i32.store offset=4
    local.get 0
    i64.const 4294967296
    i64.store offset=608
    i32.const 0
    i32.const 64
    i32.store offset=9484
    i32.const 0
    i32.const 1
    i32.store offset=9456
    i32.const 0
    local.get 0
    i32.store offset=9504
    i32.const 0
    i32.const 64
    i32.store offset=9476
    i32.const 0
    i32.const 1
    i32.store offset=9464
    i32.const 0
    i32.const 9484
    i32.store offset=9460
    i32.const 8904
    i32.const 20
    i32.add
    i32.const 131072
    i32.store
    i32.const 8904
    i32.const 12
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 596
    i32.add
    i64.const 0
    i64.store align=4
    local.get 0
    i64.const 0
    i64.store offset=588 align=4
    i32.const 0
    i32.const 0
    i32.load offset=8940
    i32.const 63
    i32.add
    i32.const -64
    i32.and
    i32.const 1216
    i32.add
    i32.store offset=9468
    i32.const 0
    i32.const 0
    i32.store offset=9472)
  (func $lind_syscall (type 13) (param i32 i64 i64 i64 i64 i64 i64 i64) (result i32)
    (local i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 8
    i32.const 80
    local.set 9
    local.get 8
    local.get 9
    i32.sub
    local.set 10
    local.get 10
    global.set $__stack_pointer
    local.get 10
    local.get 0
    i32.store offset=76
    local.get 10
    local.get 1
    i64.store offset=64
    local.get 10
    local.get 2
    i64.store offset=56
    local.get 10
    local.get 3
    i64.store offset=48
    local.get 10
    local.get 4
    i64.store offset=40
    local.get 10
    local.get 5
    i64.store offset=32
    local.get 10
    local.get 6
    i64.store offset=24
    local.get 10
    local.get 7
    i64.store offset=16
    i32.const 0
    local.set 11
    local.get 10
    local.get 11
    i32.store offset=12
    local.get 10
    i32.load offset=76
    local.set 12
    local.get 10
    i64.load offset=64
    local.set 13
    local.get 10
    i64.load offset=56
    local.set 14
    local.get 10
    i64.load offset=48
    local.set 15
    local.get 10
    i64.load offset=40
    local.set 16
    local.get 10
    i64.load offset=32
    local.set 17
    local.get 10
    i64.load offset=24
    local.set 18
    local.get 10
    i64.load offset=16
    local.set 19
    i32.const 12
    local.set 20
    local.get 10
    local.get 20
    i32.add
    local.set 21
    local.get 21
    local.set 22
    local.get 12
    local.get 13
    local.get 14
    local.get 15
    local.get 16
    local.get 17
    local.get 18
    local.get 19
    local.get 22
    call $__imported_wasi_snapshot_preview1_lind_syscall
    drop
    local.get 10
    i32.load offset=12
    local.set 23
    i32.const 80
    local.set 24
    local.get 10
    local.get 24
    i32.add
    local.set 25
    local.get 25
    global.set $__stack_pointer
    local.get 23
    return)
  (func $_start.command_export (type 2)
    call $_start
    call $__wasm_call_dtors)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 75552))
  (export "memory" (memory 0))
  (export "_start" (func $_start.command_export))
  (data $.rodata (i32.const 1024) "syscall|writev\00syscall|munmap\00syscall|mmap\00 glibc: fatal\00syscall|write\00dl-printf.c\00niov < NIOVMAX\00width < IFMTSIZE\00pid >= 0 && sizeof (pid_t) <= 4\00void _dl_debug_vdprintf(int, int, const char *, va_list)\00! \22invalid format specifier\22\00Fatal glibc error: %s:%s (%s): assertion failed: %s\0a\00Hello world from Coulson's WASM\0a\00Failed loading %lu audit modules, %lu are supported.\0a\00\00\00\00\00\00\00\00\00\00\00\000123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00\00\00\00\00\00\00\00\00\00\00\000123456789abcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\00\00\1f\00\00\00\00\00\80\ff\ff\ff\ff\ab\aa\aa\aa\00\01\00\00\00\14\00\00\91\1b\d4\cf$<V;\00\00\00\00\01\02\00\00\01\0f\00\00\00\00\00@\ff\ff\ff\ff\cd\cc\cc\cc\00\02\00\00\01\0d\00\00\95s\c2H\84&\5c\c2\ab\aa\aa\aa\00\02\00\00\00\0c\00\00\00\10\bf\81\b6\d1\1b\f9%I\92$\01\03\00\00\01\0b\00\00\97\9c\dbu\cb\a2\07\16\00\00\00\00\01\03\00\00\01\0a\00\00\00\00\00@\ff\ff\ff\ff9\8e\e38\00\01\00\00\00\0a\00\00\91\1b\d4\cf$<V;\cd\cc\cc\cc\00\03\00\00\02\09\00\00\00\ca\9a;\82\be\e0\12\a3\8b.\ba\00\03\00\00\00\09\00\00+m\8b\8c\04\deL\d2\ab\aa\aa\aa\00\03\00\00\03\08\00\00\00\00\a1\19\b5\9a\a3?O\ec\c4N\00\02\00\00\02\08\00\00!\10\9f0_\ac\f8P%I\92$\01\04\00\00\01\08\00\00\00\c1\f6W\1e;\84t\89\88\88\88\00\03\00\00\00\08\00\00\81\9b\c2\98\c2&\03\ad\00\00\00\00\01\04\00\00\03\07\00\00\00\00\00\10\ff\ff\ff\ff\f1\f0\f0\f0\00\04\00\00\03\07\00\00qEu\18\bd\b6\f0N9\8e\e38\00\02\00\00\02\07\00\00\80\bc}$\a1H\fc\c0\cbk(\af\01\05\00\00\02\07\00\00{fG5B\89\833\cd\cc\cc\cc\00\04\00\00\01\07\00\00\00@KL\ab)\7f\ad\87a\18\86\01\05\00\00\01\07\00\00\1dnZk\15=<1\a3\8b.\ba\00\04\00\00\00\07\00\00\80\e1\ac\94\e0\a9\cc\b8\c9B\16\b2\00\04\00\00\00\07\00\00g\83\f1\ca\e9m\edB\ab\aa\aa\aa\00\04\00\00\04\06\00\00\00\00d\0b\0b\0e\98g\1f\85\ebQ\00\03\00\00\04\06\00\00QJ\8d\0e\12\98y\19O\ec\c4N\00\03\00\00\03\06\00\00@\aei\12\96S\e8\bc\dbKh/\01\05\00\00\03\06\00\00I\91\17\17\a9\03\c1b%I\92$\01\05\00\00\03\06\00\00\00\10\b9\1cC=5\1d\09\cb=\8d\00\04\00\00\02\06\00\00\99Ht#\ea\ec\1d\ce\89\88\88\88\00\04\00\00\02\06\00\00@\a8s+\11\c5\0fy\85\10B\08\01\05\00\00\02\06\00\00A;\e64\a0e\b85\00\00\00\00\01\05\00\00\01\06\00\00\00\00\00@\ff\ff\ff\ff\e1\83\0f>\00\03\00\00\01\06\00\00\c1<\faL\b3\d1\ae\a9\f1\f0\f0\f0\00\05\00\00\01\06\00\00@\d8\13\5c)\c2\dfc\d5A\1d\d4\01\06\00\00\01\06\00\00\19\b5\91m0\ee\0f+9\8e\e38\00\03\00\00\00\06\00\00\00\10\bf\81\b6\d1\1b\f9")
  (data $.data (i32.const 2208) "\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.mxfast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.mmap_threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00MALLOC_MMAP_THRESHOLD_\00glibc.malloc.tcache_max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.pthread.mutex_spin_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00d\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.x86_rep_movsb_threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.tcache_unsorted_limit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.elision.tries\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.x86_non_temporal_threshold\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.x86_data_cache_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.x86_shared_cache_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.elision.skip_trylock_internal_abort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.rtld.dynamic_sort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.mmap_max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00MALLOC_MMAP_MAX_\00\00\00\00\00\00\00glibc.malloc.trim_threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00MALLOC_TRIM_THRESHOLD_\00glibc.elision.skip_lock_after_retries\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.plt_rewrite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.rtld.enable_secure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.rtld.optional_static_tls\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.mem.decorate_maps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.hwcap_mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00LD_HWCAP_MASK\00\00\00\00\00\00\00\00\00\00glibc.cpu.x86_ibt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.pthread.stack_cache_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\80\02\00\00\00\00\00\00\80\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.rtld.nns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.arena_test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00MALLOC_ARENA_TEST\00\00\00\00\00\00glibc.malloc.hugetlb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.x86_rep_stosb_threshold\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.perturb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00MALLOC_PERTURB_\00\00\00\00\00\00\00\00glibc.malloc.tcache_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.elision.enable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.x86_shstk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.gmon.maxarcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.check\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00MALLOC_CHECK_\00\00\00\00\00\00\00\00\00\00glibc.gmon.minarcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\002\00\00\00\00\00\00\002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.top_pad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00MALLOC_TOP_PAD_\00\00\00\00\00\00\00\00glibc.pthread.stack_hugetlb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.mem.tagging\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.cpu.hwcaps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.elision.skip_lock_internal_abort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.malloc.arena_max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00MALLOC_ARENA_MAX\00\00\00\00\00\00\00glibc.elision.skip_lock_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\7f\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00glibc.pthread.rseq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\1b\00\00\01\00\00\00|\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00t\05\00\00\00\00\00\00\01\00\00\00\10\1b\00\00\00\00\00\00\00\00\00\00t\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\1b\00\00\00\00\00\00\fc\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\1b\00\00\01\00\00\00\c4\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00|\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\e4\1c\00\00|\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00"))
