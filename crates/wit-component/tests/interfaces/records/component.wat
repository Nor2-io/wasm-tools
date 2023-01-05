(component
  (type (;0;)
    (instance
      (type (;0;) (tuple char u32))
      (type (;1;) (func (param "x" 0)))
      (export "tuple-arg" (func (type 1)))
      (type (;2;) (func (result 0)))
      (export "tuple-result" (func (type 2)))
      (type (;3;) (record))
      (export "empty" (type (eq 3)))
      (type (;4;) (func (param "x" 3)))
      (export "empty-arg" (func (type 5)))
      (type (;5;) (func (result 3)))
      (export "empty-result" (func (type 6)))
      (type (;6;) (record (field "a" u32) (field "b" u32)))
      (export "scalars" (type (eq 7)))
      (type (;7;) (func (param "x" 7)))
      (export "scalar-arg" (func (type 9)))
      (type (;8;) (func (result 7)))
      (export "scalar-result" (func (type 10)))
      (type (;9;) (flags "a" "b" "c" "d" "e" "f" "g" "h" "i"))
      (export "really-flags" (type (eq 11)))
      (type (;10;) (func (param "x" 11)))
      (export "flags-arg" (func (type 13)))
      (type (;11;) (func (result 11)))
      (export "flags-result" (func (type 14)))
      (type (;12;) (record (field "a" 7) (field "b" u32) (field "c" 3) (field "d" string) (field "e" 11)))
      (export "aggregates" (type (eq 15)))
      (type (;13;) (func (param "x" 15)))
      (export "aggregate-arg" (func (type 17)))
      (type (;14;) (func (result 15)))
      (export "aggregate-result" (func (type 18)))
      (type (;15;) s32)
      (export "int-typedef" (type (eq 19)))
      (type (;16;) (tuple 19))
      (export "tuple-typedef2" (type (eq 21)))
      (type (;17;) (func (param "e" 21) (result s32)))
      (export "typedef-inout" (func (type 23)))
    )
  )
  (import "records" (instance (;0;) (type 0)))
  (core module (;0;)
    (type (;0;) (func (param i32 i32)))
    (type (;1;) (func (param i32)))
    (type (;2;) (func))
    (type (;3;) (func (result i32)))
    (type (;4;) (func (param i32 i32 i32 i32 i32 i32)))
    (type (;5;) (func (param i32) (result i32)))
    (type (;6;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
    (type (;7;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
    (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
    (import "records" "tuple-arg" (func (;0;) (type 0)))
    (import "records" "tuple-result" (func (;1;) (type 1)))
    (import "records" "empty-arg" (func (;2;) (type 2)))
    (import "records" "empty-result" (func (;3;) (type 2)))
    (import "records" "scalar-arg" (func (;4;) (type 0)))
    (import "records" "scalar-result" (func (;5;) (type 1)))
    (import "records" "flags-arg" (func (;6;) (type 1)))
    (import "records" "flags-result" (func (;7;) (type 3)))
    (import "records" "aggregate-arg" (func (;8;) (type 4)))
    (import "records" "aggregate-result" (func (;9;) (type 1)))
    (import "records" "typedef-inout" (func (;10;) (type 5)))
    (func (;11;) (type 0) (param i32 i32)
      unreachable
    )
    (func (;12;) (type 3) (result i32)
      unreachable
    )
    (func (;13;) (type 2)
      unreachable
    )
    (func (;14;) (type 2)
      unreachable
    )
    (func (;15;) (type 0) (param i32 i32)
      unreachable
    )
    (func (;16;) (type 3) (result i32)
      unreachable
    )
    (func (;17;) (type 6) (param i32 i32 i32 i32 i32 i32 i32 i32 i32)
      unreachable
    )
    (func (;18;) (type 3) (result i32)
      unreachable
    )
    (func (;19;) (type 7) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      unreachable
    )
    (func (;20;) (type 3) (result i32)
      unreachable
    )
    (func (;21;) (type 1) (param i32))
    (func (;22;) (type 5) (param i32) (result i32)
      unreachable
    )
    (func (;23;) (type 3) (result i32)
      unreachable
    )
    (func (;24;) (type 8) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (memory (;0;) 0)
    (export "records#tuple-arg" (func 11))
    (export "records#tuple-result" (func 12))
    (export "records#empty-arg" (func 13))
    (export "records#empty-result" (func 14))
    (export "records#scalar-arg" (func 15))
    (export "records#scalar-result" (func 16))
    (export "records#flags-arg" (func 17))
    (export "records#flags-result" (func 18))
    (export "records#aggregate-arg" (func 19))
    (export "records#aggregate-result" (func 20))
    (export "cabi_post_records#aggregate-result" (func 21))
    (export "records#typedef-inout" (func 22))
    (export "records#tuple-tupledef-user" (func 23))
    (export "memory" (memory 0))
    (export "cabi_realloc" (func 24))
  )
  (core module (;1;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (param i32 i32 i32 i32 i32 i32)))
    (func $indirect-records-tuple-result (;0;) (type 0) (param i32)
      local.get 0
      i32.const 0
      call_indirect (type 0)
    )
    (func $indirect-records-scalar-result (;1;) (type 0) (param i32)
      local.get 0
      i32.const 1
      call_indirect (type 0)
    )
    (func $indirect-records-aggregate-arg (;2;) (type 1) (param i32 i32 i32 i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      local.get 5
      i32.const 2
      call_indirect (type 1)
    )
    (func $indirect-records-aggregate-result (;3;) (type 0) (param i32)
      local.get 0
      i32.const 3
      call_indirect (type 0)
    )
    (table (;0;) 4 4 funcref)
    (export "0" (func $indirect-records-tuple-result))
    (export "1" (func $indirect-records-scalar-result))
    (export "2" (func $indirect-records-aggregate-arg))
    (export "3" (func $indirect-records-aggregate-result))
    (export "$imports" (table 0))
  )
  (core module (;2;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func (param i32 i32 i32 i32 i32 i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 0)))
    (import "" "2" (func (;2;) (type 1)))
    (import "" "3" (func (;3;) (type 0)))
    (import "" "$imports" (table (;0;) 4 4 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2 3)
  )
  (core instance (;0;) (instantiate 1))
  (alias core export 0 "0" (core func (;0;)))
  (alias core export 0 "1" (core func (;1;)))
  (alias core export 0 "2" (core func (;2;)))
  (alias core export 0 "3" (core func (;3;)))
  (alias export 0 "tuple-arg" (func (;0;)))
  (core func (;4;) (canon lower (func 0)))
  (alias export 0 "empty-arg" (func (;1;)))
  (core func (;5;) (canon lower (func 1)))
  (alias export 0 "empty-result" (func (;2;)))
  (core func (;6;) (canon lower (func 2)))
  (alias export 0 "scalar-arg" (func (;3;)))
  (core func (;7;) (canon lower (func 3)))
  (alias export 0 "flags-arg" (func (;4;)))
  (core func (;8;) (canon lower (func 4)))
  (alias export 0 "flags-result" (func (;5;)))
  (core func (;9;) (canon lower (func 5)))
  (alias export 0 "typedef-inout" (func (;6;)))
  (core func (;10;) (canon lower (func 6)))
  (core instance (;1;)
    (export "tuple-result" (func 0))
    (export "scalar-result" (func 1))
    (export "aggregate-arg" (func 2))
    (export "aggregate-result" (func 3))
    (export "tuple-arg" (func 4))
    (export "empty-arg" (func 5))
    (export "empty-result" (func 6))
    (export "scalar-arg" (func 7))
    (export "flags-arg" (func 8))
    (export "flags-result" (func 9))
    (export "typedef-inout" (func 10))
  )
  (core instance (;2;) (instantiate 0
      (with "records" (instance 1))
    )
  )
  (alias core export 2 "memory" (core memory (;0;)))
  (alias core export 2 "cabi_realloc" (core func (;11;)))
  (alias core export 0 "$imports" (core table (;0;)))
  (alias export 0 "tuple-result" (func (;7;)))
  (core func (;12;) (canon lower (func 7) (memory 0)))
  (alias export 0 "scalar-result" (func (;8;)))
  (core func (;13;) (canon lower (func 8) (memory 0)))
  (alias export 0 "aggregate-arg" (func (;9;)))
  (core func (;14;) (canon lower (func 9) (memory 0) string-encoding=utf8))
  (alias export 0 "aggregate-result" (func (;10;)))
  (core func (;15;) (canon lower (func 10) (memory 0) (realloc 11) string-encoding=utf8))
  (core instance (;3;)
    (export "$imports" (table 0))
    (export "0" (func 12))
    (export "1" (func 13))
    (export "2" (func 14))
    (export "3" (func 15))
  )
  (core instance (;4;) (instantiate 2
      (with "" (instance 3))
    )
  )
  (alias core export 2 "records#tuple-arg" (core func (;16;)))
  (type (;1;) (tuple char u32))
  (type (;2;) (func (param "x" 1)))
  (func (;11;) (type 2) (canon lift (core func 16)))
  (alias core export 2 "records#tuple-result" (core func (;17;)))
  (type (;3;) (func (result 1)))
  (func (;12;) (type 3) (canon lift (core func 17) (memory 0)))
  (alias core export 2 "records#empty-arg" (core func (;18;)))
  (type (;4;) (record))
  (type (;5;) (func (param "x" 4)))
  (func (;13;) (type 5) (canon lift (core func 18)))
  (alias core export 2 "records#empty-result" (core func (;19;)))
  (type (;6;) (func (result 4)))
  (func (;14;) (type 6) (canon lift (core func 19)))
  (alias core export 2 "records#scalar-arg" (core func (;20;)))
  (type (;7;) (record (field "a" u32) (field "b" u32)))
  (type (;8;) (func (param "x" 7)))
  (func (;15;) (type 8) (canon lift (core func 20)))
  (alias core export 2 "records#scalar-result" (core func (;21;)))
  (type (;9;) (func (result 7)))
  (func (;16;) (type 9) (canon lift (core func 21) (memory 0)))
  (alias core export 2 "records#flags-arg" (core func (;22;)))
  (type (;10;) (record (field "a" bool) (field "b" bool) (field "c" bool) (field "d" bool) (field "e" bool) (field "f" bool) (field "g" bool) (field "h" bool) (field "i" bool)))
  (type (;11;) (func (param "x" 10)))
  (func (;17;) (type 11) (canon lift (core func 22)))
  (alias core export 2 "records#flags-result" (core func (;23;)))
  (type (;12;) (func (result 10)))
  (func (;18;) (type 12) (canon lift (core func 23) (memory 0)))
  (alias core export 2 "records#aggregate-arg" (core func (;24;)))
  (type (;13;) (record (field "a" 7) (field "b" u32) (field "c" 4) (field "d" string) (field "e" 10)))
  (type (;14;) (func (param "x" 13)))
  (func (;19;) (type 14) (canon lift (core func 24) (memory 0) (realloc 11) string-encoding=utf8))
  (alias core export 2 "records#aggregate-result" (core func (;25;)))
  (type (;15;) (func (result 13)))
  (alias core export 2 "cabi_post_records#aggregate-result" (core func (;26;)))
  (func (;20;) (type 15) (canon lift (core func 25) (memory 0) string-encoding=utf8 (post-return 26)))
  (alias core export 2 "records#typedef-inout" (core func (;27;)))
  (type (;16;) s32)
  (type (;17;) (tuple 16))
  (type (;18;) (func (param "e" 17) (result s32)))
  (func (;21;) (type 18) (canon lift (core func 27)))
  (alias core export 2 "records#tuple-tupledef-user" (core func (;28;)))
  (type (;19;) (tuple s32))
  (type (;20;) (func (result 19)))
  (func (;22;) (type 20) (canon lift (core func 28)))
  (instance (;1;)
    (export "tuple-arg" (func 11))
    (export "tuple-result" (func 12))
    (export "empty-arg" (func 13))
    (export "empty-result" (func 14))
    (export "scalar-arg" (func 15))
    (export "scalar-result" (func 16))
    (export "flags-arg" (func 17))
    (export "flags-result" (func 18))
    (export "aggregate-arg" (func 19))
    (export "aggregate-result" (func 20))
    (export "typedef-inout" (func 21))
    (export "tuple-tupledef-user" (func 22))
    (export "empty" (type 4))
    (export "scalars" (type 7))
    (export "really-flags" (type 10))
    (export "aggregates" (type 13))
    (export "int-typedef" (type 16))
    (export "tuple-typedef2" (type 17))
    (export "tuple-typedef" (type 19))
  )
  (export (;2;) "records" (instance 1))
)