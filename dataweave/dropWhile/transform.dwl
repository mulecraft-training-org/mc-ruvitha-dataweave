%dw 2.0
import * from dw::core::Arrays
output application/json
---
{ "1" : [1, 2, 3, 4] dropWhile $ < 3,
 "2" : [1, 2, 3, 4] dropWhile $ > 3,
 "2" : [1, 2, 3, 4] dropWhile $ < 2
 
 }
