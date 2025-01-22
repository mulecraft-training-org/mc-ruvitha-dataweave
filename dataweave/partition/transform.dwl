%dw 2.0
import * from dw::core::Arrays
var users = ["Mariano", "Leandro", "Julian", "Tomo"]
output application/json
---
{
    "1": [1,2,3,4] partition ((item) -> isEven(item) ),
    "2": [ { a: 1 }, { a: 2 }, { a: 3 } ] partition ((item) -> item.a>2 )
    
}
