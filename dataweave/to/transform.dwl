%dw 2.0
output application/json
var ex = "hello world"
---
{
    "1": ex [2 to 5] ,
    "2":ex [4 to -1],
    "3":ex[-1 to -0],
}
