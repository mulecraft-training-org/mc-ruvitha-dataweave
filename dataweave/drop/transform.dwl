%dw 2.0
import * from dw::core::Arrays
var users = ["Mariano", "Leandro", "Julian"]
output application/json
---
{ "1" : [1, 2, 3, 4] drop  (2),
 "2" : [1, 2, 3, 4] drop -1,
 "3": drop(users,4),
  "4": drop(users,2),
 }
