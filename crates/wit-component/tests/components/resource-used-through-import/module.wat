(module
  (import "foo:bar/a" "[resource-drop-own]r" (func (param i32)))
  (func (export "b#foo") (result i32)
    (i32.const 0)
  )
)
