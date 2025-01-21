%dw 2.0
import * from dw::core::Arrays
output application/json
---
{ "1" : [1, 2, 3, 4] indexWhere ((item) -> item>1) ,
 "2" : [1, 2, 3, 4] indexWhere ((item) -> item>5) ,
}
