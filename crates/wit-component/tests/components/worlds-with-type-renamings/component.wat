(component
  (type (;0;)
    (instance
      (type (;0;) (record))
      (export (;1;) "some-type" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "the-func" (func (type 2)))
    )
  )
  (import (interface "foo:foo/i") (instance (;0;) (type 0)))
  (alias export 0 "some-type" (type (;1;)))
  (import "other-name" (type (;2;) (eq 1)))
  (core module (;0;)
    (type (;0;) (func (param i32 i64 i32)))
    (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;2;) (func))
    (import "foo:foo/i" "the-func" (func (;0;) (type 2)))
    (func (;1;) (type 2)
      unreachable
    )
    (func (;2;) (type 1) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (memory (;0;) 0)
    (export "foo:foo/i#the-func" (func 1))
    (export "cabi_realloc" (func 2))
    (export "memory" (memory 0))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (alias export 0 "the-func" (func (;0;)))
  (core func (;0;) (canon lower (func 0)))
  (core instance (;0;)
    (export "the-func" (func 0))
  )
  (core instance (;1;) (instantiate 0
      (with "foo:foo/i" (instance 0))
    )
  )
  (alias core export 1 "memory" (core memory (;0;)))
  (alias core export 1 "cabi_realloc" (core func (;1;)))
  (type (;3;) (func (result 1)))
  (alias core export 1 "foo:foo/i#the-func" (core func (;2;)))
  (func (;1;) (type 3) (canon lift (core func 2)))
  (component (;0;)
    (type (;0;) (record))
    (import "import-type-some-type" (type (;1;) (eq 0)))
    (type (;2;) (func (result 1)))
    (import "import-func-the-func" (func (;0;) (type 2)))
    (type (;3;) (record))
    (export (;4;) "some-type" (type 3))
    (type (;5;) (func (result 4)))
    (export (;1;) "the-func" (func 0) (func (type 5)))
  )
  (instance (;1;) (instantiate 0
      (with "import-func-the-func" (func 1))
      (with "import-type-some-type" (type 1))
    )
  )
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
  (export (;2;) (interface "foo:foo/i") (instance 1))
)