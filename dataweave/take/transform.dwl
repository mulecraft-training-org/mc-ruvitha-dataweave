%dw 2.0
import * from dw::core::Arrays
var users = ["Mariano", "Leandro", "Julian", "Tomo"]
output application/json
---
{
    "1": take([1,2,3,4,5,6], 3)  ,
    "2": take([ { a: 1 }, { a: 2 }, { a: 3 } ] ,3 )
    
}
