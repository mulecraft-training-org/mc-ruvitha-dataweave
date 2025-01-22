%dw 2.0
import * from dw::core::Arrays
var users = ["Mariano", "Leandro", "Julian", "Tomo"]
output application/json
---
{
    "1": [1,2,3,4,5,6] takeWhile ((item) -> item<=3)  ,
    "2": [ { a: 1 }, { a: 2 }, { a: 3 } ] takeWhile ((item) ->item.a < 2 )
    
}
