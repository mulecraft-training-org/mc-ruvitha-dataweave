%dw 2.0
import * from dw::core::Arrays
var users = ["Mariano", "Leandro", "Julian", "Tomo"]
output application/json
---
{
    "1": [1,2,3,4] splitWhere ((item) -> item>3),
    "2": users splitWhere ((item) -> item startsWith  "Le" )
}
