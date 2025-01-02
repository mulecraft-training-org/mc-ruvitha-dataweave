%dw 2.0
output application/json
var ex = "hello world"
---
[typeOf("A b"), typeOf([1,2]), typeOf(34), typeOf(true), typeOf({ a : 5 }) ]
