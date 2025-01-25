%dw 2.0
import * from dw::core::Arrays
var a = [1,2,3,4]
output application/json
---
{
"1": a some ((x) -> x < 3),
"2": a some ((x) -> x > 6)
}
