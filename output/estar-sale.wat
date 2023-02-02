(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i64)))
  (type (;11;) (func (param i32 i32 i32 i64 i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 10)))
  (import "env" "bigIntAdd" (func (;1;) (type 6)))
  (import "env" "signalError" (func (;2;) (type 5)))
  (import "env" "mBufferNew" (func (;3;) (type 3)))
  (import "env" "mBufferAppend" (func (;4;) (type 0)))
  (import "env" "mBufferEq" (func (;5;) (type 0)))
  (import "env" "mBufferAppendBytes" (func (;6;) (type 7)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;7;) (type 8)))
  (import "env" "managedCaller" (func (;8;) (type 4)))
  (import "env" "bigIntGetExternalBalance" (func (;9;) (type 5)))
  (import "env" "managedSCAddress" (func (;10;) (type 4)))
  (import "env" "mBufferGetLength" (func (;11;) (type 2)))
  (import "env" "mBufferGetBytes" (func (;12;) (type 0)))
  (import "env" "bigIntGetESDTExternalBalance" (func (;13;) (type 11)))
  (import "env" "managedOwnerAddress" (func (;14;) (type 4)))
  (import "env" "managedGetMultiESDTCallValue" (func (;15;) (type 4)))
  (import "env" "bigIntGetCallValue" (func (;16;) (type 4)))
  (import "env" "mBufferGetArgument" (func (;17;) (type 0)))
  (import "env" "managedSignalError" (func (;18;) (type 4)))
  (import "env" "bigIntGetUnsignedArgument" (func (;19;) (type 5)))
  (import "env" "getNumArguments" (func (;20;) (type 3)))
  (import "env" "bigIntFinishUnsigned" (func (;21;) (type 4)))
  (import "env" "bigIntSign" (func (;22;) (type 2)))
  (import "env" "bigIntCmp" (func (;23;) (type 0)))
  (import "env" "mBufferGetByteSlice" (func (;24;) (type 12)))
  (import "env" "mBufferSetBytes" (func (;25;) (type 7)))
  (import "env" "mBufferStorageLoad" (func (;26;) (type 0)))
  (import "env" "mBufferStorageStore" (func (;27;) (type 0)))
  (import "env" "mBufferToBigIntUnsigned" (func (;28;) (type 0)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;29;) (type 0)))
  (import "env" "checkNoPayment" (func (;30;) (type 1)))
  (import "env" "validateTokenIdentifier" (func (;31;) (type 2)))
  (import "env" "getNumESDTTransfers" (func (;32;) (type 3)))
  (import "env" "bigIntMul" (func (;33;) (type 6)))
  (import "env" "bigIntTDiv" (func (;34;) (type 6)))
  (import "env" "managedTransferValueExecute" (func (;35;) (type 8)))
  (import "env" "mBufferFinish" (func (;36;) (type 2)))
  (func (;37;) (type 2) (param i32) (result i32)
    (local i32)
    call 38
    local.tee 1
    i64.const 0
    call 0
    local.get 1
    local.get 1
    local.get 0
    call 1
    local.get 1)
  (func (;38;) (type 3) (result i32)
    (local i32)
    i32.const 1049056
    i32.const 1049056
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;39;) (type 13) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 40
        unreachable
      end
      call 40
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func (;40;) (type 1)
    call 89
    unreachable)
  (func (;41;) (type 3) (result i32)
    call 42
    call 66
    call 43)
  (func (;42;) (type 3) (result i32)
    i32.const 1048995
    i32.const 7
    call 59)
  (func (;43;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    call 54
    local.set 1
    local.get 0
    i32.const 2147483646
    i32.eq
    if  ;; label = @1
      local.get 1
      call 52
      return
    end
    call 38
    local.set 2
    local.get 0
    call 11
    local.set 3
    local.get 1
    call 53
    local.get 0
    i32.const 1049097
    call 12
    drop
    i32.const 1049065
    i32.const 1049097
    local.get 3
    i64.const 0
    local.get 2
    call 13
    local.get 2)
  (func (;44;) (type 2) (param i32) (result i32)
    (local i32)
    call 3
    local.tee 1
    local.get 0
    call 4
    drop
    local.get 1)
  (func (;45;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 5
    i32.const 0
    i32.gt_s)
  (func (;46;) (type 5) (param i32 i32)
    local.get 0
    local.get 1
    call 2
    unreachable)
  (func (;47;) (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    call 48
    local.set 6
    call 48
    local.set 7
    call 48
    local.set 4
    local.get 1
    call 44
    local.set 1
    local.get 2
    call 37
    local.set 2
    local.get 3
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 3
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=40
    local.get 3
    i32.const 16
    i32.add
    local.get 3
    i32.const 24
    i32.add
    local.tee 1
    i32.const 0
    i32.const 4
    call 49
    local.get 3
    i32.load offset=16
    local.get 3
    i32.load offset=20
    local.get 3
    i32.const 40
    i32.add
    local.tee 5
    i32.const 4
    call 50
    local.get 3
    i64.const 0
    i64.store offset=40
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 4
    i32.const 12
    call 49
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load offset=12
    local.get 5
    i32.const 8
    call 50
    local.get 3
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=40
    local.get 3
    local.get 1
    i32.const 12
    i32.const 16
    call 49
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    local.get 5
    i32.const 4
    call 50
    local.get 4
    local.get 1
    i32.const 16
    call 6
    drop
    local.get 0
    i32.load
    local.get 4
    i64.const 0
    local.get 6
    local.get 7
    call 7
    drop
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;48;) (type 3) (result i32)
    (local i32)
    call 38
    local.tee 0
    i32.const 1049004
    i32.const 0
    call 25
    drop
    local.get 0)
  (func (;49;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 1
    i32.const 16
    call 39
    local.get 4
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;50;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 1
      local.tee 3
      i32.const 15
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 5
        i32.add
        local.set 4
        local.get 5
        if  ;; label = @3
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 3
        local.get 5
        i32.sub
        local.tee 3
        i32.const -4
        i32.and
        local.tee 6
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 2
          local.get 5
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          local.tee 1
          if  ;; label = @4
            local.get 6
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 5
            i32.const -4
            i32.and
            local.tee 7
            i32.const 4
            i32.add
            local.set 2
            i32.const 0
            local.get 1
            i32.const 3
            i32.shl
            local.tee 8
            i32.sub
            i32.const 24
            i32.and
            local.set 9
            local.get 7
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 4
              local.get 1
              local.get 8
              i32.shr_u
              local.get 2
              i32.load
              local.tee 1
              local.get 9
              i32.shl
              i32.or
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 4
              i32.const 4
              i32.add
              local.tee 4
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 6
          i32.const 0
          i32.le_s
          br_if 0 (;@3;)
          local.get 5
          local.set 2
          loop  ;; label = @4
            local.get 4
            local.get 2
            i32.load
            i32.store
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 4
            i32.const 4
            i32.add
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 3
        local.get 5
        local.get 6
        i32.add
        local.set 2
      end
      local.get 3
      if  ;; label = @2
        local.get 0
        local.get 3
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 1
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    call 89
    unreachable)
  (func (;51;) (type 3) (result i32)
    (local i32)
    call 38
    local.tee 0
    call 8
    local.get 0)
  (func (;52;) (type 2) (param i32) (result i32)
    (local i32)
    call 38
    local.set 1
    local.get 0
    call 53
    i32.const 1049065
    local.get 1
    call 9
    local.get 1)
  (func (;53;) (type 4) (param i32)
    local.get 0
    i32.const 1049065
    call 12
    drop)
  (func (;54;) (type 3) (result i32)
    (local i32)
    call 38
    local.tee 0
    call 10
    local.get 0)
  (func (;55;) (type 3) (result i32)
    (local i32)
    call 38
    local.tee 0
    call 14
    local.get 0)
  (func (;56;) (type 4) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const -21
    local.set 1
    block  ;; label = @1
      i32.const 1049064
      i32.load8_u
      local.tee 3
      if  ;; label = @2
        i32.const -21
        i32.const 2147483647
        local.get 3
        select
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1049064
      i32.const 1
      i32.store8
      i32.const -21
      call 15
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              call 11
              i32.const 4
              i32.shr_u
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1048745
            i32.const 34
            call 2
            unreachable
          end
          i32.const -11
          local.set 1
          i32.const 2147483646
          local.set 3
          i32.const 1049060
          i32.load8_u
          local.tee 4
          if  ;; label = @4
            i32.const -11
            i32.const 2147483647
            local.get 4
            select
            local.set 1
            br 2 (;@2;)
          end
          i32.const 1049060
          i32.const 1
          i32.store8
          i32.const -11
          call 16
          br 1 (;@2;)
        end
        local.get 2
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i64.const 0
        i64.store
        local.get 1
        local.get 2
        i32.const 16
        call 57
        br_if 1 (;@1;)
        local.get 2
        i64.load offset=4 align=4
        local.tee 5
        i64.const 56
        i64.shl
        local.get 5
        i64.const 40
        i64.shl
        i64.const 71776119061217280
        i64.and
        i64.or
        local.get 5
        i64.const 24
        i64.shl
        i64.const 280375465082880
        i64.and
        local.get 5
        i64.const 8
        i64.shl
        i64.const 1095216660480
        i64.and
        i64.or
        i64.or
        local.get 5
        i64.const 8
        i64.shr_u
        i64.const 4278190080
        i64.and
        local.get 5
        i64.const 24
        i64.shr_u
        i64.const 16711680
        i64.and
        i64.or
        local.get 5
        i64.const 40
        i64.shr_u
        i64.const 65280
        i64.and
        local.get 5
        i64.const 56
        i64.shr_u
        i64.or
        i64.or
        i64.or
        local.set 5
        local.get 2
        i32.load
        local.tee 1
        i32.const 24
        i32.shl
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        local.set 3
        local.get 2
        i32.load offset=12
        local.tee 1
        i32.const 24
        i32.shl
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        local.set 1
      end
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 5
      i64.store
      local.get 0
      local.get 3
      i32.store offset=8
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048881
    i32.const 29
    call 2
    unreachable)
  (func (;57;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 0
    local.get 2
    local.get 1
    call 24
    i32.const 0
    i32.ne)
  (func (;58;) (type 3) (result i32)
    (local i32)
    i32.const 0
    call 38
    local.tee 0
    call 17
    drop
    local.get 0)
  (func (;59;) (type 0) (param i32 i32) (result i32)
    (local i32)
    call 38
    local.tee 2
    local.get 0
    local.get 1
    call 25
    drop
    local.get 2)
  (func (;60;) (type 4) (param i32)
    call 20
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048842
    i32.const 25
    call 2
    unreachable)
  (func (;61;) (type 4) (param i32)
    local.get 0
    call 62
    call 21)
  (func (;62;) (type 2) (param i32) (result i32)
    local.get 0
    call 66
    call 38
    local.tee 0
    call 28
    drop
    local.get 0)
  (func (;63;) (type 2) (param i32) (result i32)
    i32.const -1
    local.get 0
    call 22
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select)
  (func (;64;) (type 0) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call 23
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select)
  (func (;65;) (type 2) (param i32) (result i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 0
      call 66
      local.tee 0
      call 11
      local.tee 2
      i32.const 9
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 0
        local.get 2
        local.get 1
        i32.const 8
        i32.add
        i32.const 8
        call 39
        local.get 0
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        i32.load offset=4
        local.tee 0
        call 57
        drop
        block  ;; label = @3
          local.get 0
          i32.eqz
          if  ;; label = @4
            br 1 (;@3;)
          end
          loop  ;; label = @4
            local.get 0
            if  ;; label = @5
              local.get 0
              i32.const 1
              i32.sub
              local.set 0
              local.get 2
              i64.load8_u
              local.get 3
              i64.const 8
              i64.shl
              i64.or
              local.set 3
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              br 1 (;@4;)
            end
          end
          local.get 3
          i64.const 4294967296
          i64.ge_u
          br_if 2 (;@1;)
        end
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        local.get 3
        i32.wrap_i64
        return
      end
      i32.const 1048867
      i32.const 14
      call 67
      unreachable
    end
    i32.const 1048867
    i32.const 14
    call 67
    unreachable)
  (func (;66;) (type 2) (param i32) (result i32)
    local.get 0
    call 38
    local.tee 0
    call 26
    drop
    local.get 0)
  (func (;67;) (type 5) (param i32 i32)
    (local i32)
    i32.const 1048921
    i32.const 22
    call 59
    local.tee 2
    local.get 0
    local.get 1
    call 6
    drop
    local.get 2
    call 18
    unreachable)
  (func (;68;) (type 5) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i64.extend_i32_u
    local.tee 5
    i64.const 56
    i64.shl
    local.get 5
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 5
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 5
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    i64.store offset=8
    block  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 1049004
        local.set 3
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.ne
            if  ;; label = @5
              local.get 2
              i32.const 8
              i32.add
              local.get 1
              i32.add
              local.tee 3
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 1
              i32.sub
              local.set 1
              br 4 (;@1;)
            end
            call 88
            unreachable
          end
          call 88
          unreachable
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
      unreachable
    end
    call 38
    local.tee 4
    local.get 3
    local.get 1
    call 25
    drop
    local.get 0
    local.get 4
    call 27
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;69;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    call 44
    local.tee 0
    i32.const 1048910
    i32.const 5
    call 6
    drop
    local.get 2
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 6
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;70;) (type 5) (param i32 i32)
    (local i32)
    call 38
    local.tee 2
    local.get 1
    call 29
    drop
    local.get 0
    local.get 2
    call 27
    drop)
  (func (;71;) (type 0) (param i32 i32) (result i32)
    local.get 0
    call 44
    local.tee 0
    i32.const 1048915
    i32.const 6
    call 6
    drop
    local.get 1
    local.get 0
    call 72
    local.get 0)
  (func (;72;) (type 5) (param i32 i32)
    local.get 1
    local.get 0
    call 4
    drop)
  (func (;73;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 71
    call 65
    i32.const 0
    i32.ne)
  (func (;74;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 64
    i32.const 255
    i32.and
    i32.const 255
    i32.eq)
  (func (;75;) (type 4) (param i32)
    (local i32 i32 i32)
    i32.const 1048963
    i32.const 10
    call 59
    local.tee 1
    call 44
    local.set 2
    local.get 1
    call 44
    local.tee 3
    i32.const 1048959
    i32.const 4
    call 6
    drop
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func (;76;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const 1048973
    i32.const 17
    call 59
    local.tee 0
    call 72
    local.get 0)
  (func (;77;) (type 3) (result i32)
    i32.const 1048990
    i32.const 5
    call 59)
  (func (;78;) (type 1)
    (local i32 i32)
    call 30
    i32.const 2
    call 60
    call 58
    local.set 1
    i32.const 1
    call 38
    local.tee 0
    call 19
    block  ;; label = @1
      local.get 1
      call 31
      if  ;; label = @2
        local.get 0
        call 63
        i32.const 255
        i32.and
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        call 42
        local.get 1
        call 27
        drop
        call 77
        local.get 0
        call 70
        return
      end
      i32.const 1048684
      i32.const 25
      call 46
      unreachable
    end
    i32.const 1048709
    i32.const 36
    call 46
    unreachable)
  (func (;79;) (type 1)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call 32
          i32.eqz
          if  ;; label = @4
            i32.const 0
            call 60
            local.get 0
            i32.const 8
            i32.add
            call 56
            local.get 0
            i32.load offset=16
            i32.const 2147483646
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=20
            local.set 1
            call 41
            local.tee 3
            call 63
            i32.const 255
            i32.and
            i32.const 1
            i32.ne
            br_if 2 (;@2;)
            call 77
            call 62
            local.set 2
            call 38
            local.tee 5
            i64.const 1000000000000000000
            call 0
            call 38
            local.tee 4
            local.get 2
            local.get 1
            call 33
            local.get 4
            local.get 4
            local.get 5
            call 34
            local.get 3
            local.get 4
            call 64
            i32.const 255
            i32.and
            i32.const 2
            i32.ge_u
            br_if 3 (;@1;)
            local.get 0
            call 51
            local.tee 1
            i32.store offset=28
            call 42
            call 66
            local.set 5
            local.get 1
            call 76
            call 62
            local.set 3
            call 38
            local.tee 2
            local.get 4
            local.get 3
            call 1
            local.get 1
            call 76
            local.get 2
            call 70
            local.get 4
            call 37
            drop
            local.get 0
            i32.const 32
            i32.add
            call 75
            call 51
            local.set 1
            block  ;; label = @5
              local.get 0
              i32.load offset=32
              local.tee 3
              local.get 1
              call 73
              br_if 0 (;@5;)
              local.get 3
              local.get 1
              call 73
              br_if 0 (;@5;)
              local.get 0
              i32.const 40
              i32.add
              i32.load
              local.tee 2
              call 65
              local.set 6
              local.get 0
              i32.load offset=36
              local.get 6
              i32.const 1
              i32.add
              local.tee 6
              call 69
              local.get 1
              call 27
              drop
              local.get 2
              local.get 6
              call 68
              local.get 2
              call 65
              local.set 2
              local.get 3
              local.get 1
              call 71
              local.get 2
              call 68
            end
            local.get 0
            i32.const 28
            i32.add
            local.get 5
            local.get 4
            call 47
            local.get 0
            i32.const 48
            i32.add
            global.set 0
            return
          end
          i32.const 1048805
          i32.const 37
          call 2
          unreachable
        end
        i32.const 1048624
        i32.const 10
        call 46
        unreachable
      end
      i32.const 1048634
      i32.const 23
      call 46
      unreachable
    end
    i32.const 1048657
    i32.const 27
    call 46
    unreachable)
  (func (;80;) (type 1)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    block  ;; label = @1
      block  ;; label = @2
        call 55
        call 51
        call 45
        if  ;; label = @3
          i32.const 0
          call 60
          local.get 0
          call 55
          local.tee 4
          i32.store offset=12
          call 54
          call 52
          local.set 1
          call 42
          call 66
          local.tee 5
          call 44
          call 43
          local.set 2
          call 38
          local.tee 3
          i64.const 0
          call 0
          local.get 3
          local.get 2
          call 74
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 1049004
        i32.const 36
        call 2
        unreachable
      end
      local.get 0
      i32.const 12
      i32.add
      local.get 5
      local.get 2
      call 47
    end
    local.get 3
    local.get 1
    call 74
    if  ;; label = @1
      local.get 4
      local.get 1
      i64.const 0
      call 48
      call 48
      call 35
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;81;) (type 1)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    call 56
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    call 56
    i32.const 0
    call 60
    call 42
    i32.const -25
    call 26
    drop
    block  ;; label = @1
      i32.const -25
      call 11
      if  ;; label = @2
        call 42
        call 66
        local.set 2
        local.get 1
        i32.const 2147483646
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        call 45
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 1048590
      i32.const 16
      call 46
      unreachable
    end
    i32.const 1048606
    i32.const 18
    call 46
    unreachable)
  (func (;82;) (type 1)
    (local i32)
    call 30
    i32.const 1
    call 60
    call 58
    local.tee 0
    call 11
    i32.const 32
    i32.ne
    if  ;; label = @1
      i32.const 1048779
      i32.const 23
      call 59
      local.tee 0
      i32.const 1048576
      i32.const 14
      call 6
      drop
      local.get 0
      i32.const 1048802
      i32.const 3
      call 6
      drop
      local.get 0
      i32.const 1048943
      i32.const 16
      call 6
      drop
      local.get 0
      call 18
      unreachable
    end
    local.get 0
    call 76
    call 61)
  (func (;83;) (type 1)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 60
    local.get 0
    call 75
    local.get 0
    i32.const 8
    i32.add
    i32.load
    call 65
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    i32.const 1
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        local.get 2
        i32.le_u
        if  ;; label = @3
          local.get 3
          local.get 1
          call 69
          call 66
          local.tee 4
          call 11
          i32.const 32
          i32.ne
          br_if 2 (;@1;)
          local.get 4
          call 36
          drop
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 1 (;@2;)
        end
      end
      local.get 0
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048943
    i32.const 16
    call 67
    unreachable)
  (func (;84;) (type 1)
    call 30
    i32.const 0
    call 60
    call 77
    call 61)
  (func (;85;) (type 1)
    call 30
    i32.const 0
    call 60
    call 41
    call 21)
  (func (;86;) (type 1)
    call 30
    i32.const 0
    call 60
    call 42
    call 66
    call 36
    drop)
  (func (;87;) (type 1)
    nop)
  (func (;88;) (type 1)
    i32.const 1049040
    i32.const 14
    call 2
    unreachable)
  (func (;89;) (type 1)
    call 88
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049129))
  (global (;2;) i32 (i32.const 1049136))
  (export "memory" (memory 0))
  (export "init" (func 78))
  (export "buy" (func 79))
  (export "collect" (func 80))
  (export "fundContract" (func 81))
  (export "getClientBoughtValue" (func 82))
  (export "getClientList" (func 83))
  (export "getPrice" (func 84))
  (export "getTokenBalance" (func 85))
  (export "getTokenId" (func 86))
  (export "callBack" (func 87))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "client_addressToken id not setInvalid fund tokenOnly EGLD.No more tokens to sale.Not enough tokens for sale.Invalid token identifier!Initial price must be positive valueincorrect number of ESDT transfersargument decode error (): function does not accept ESDT paymentwrong number of argumentsinput too longManagedVec index out of range.item.indexstorage decode error: bad array length.lenclientListclientBoughtValuepricetokenId\00\00Endpoint can only be called by ownerpanic occurred")
  (data (;1;) (i32.const 1049056) "\9c\ff\ff\ff"))
