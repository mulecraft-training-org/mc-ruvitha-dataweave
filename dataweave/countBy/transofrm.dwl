%dw 2.0
import * from dw::core::Arrays
output application/json
---
{ "countBy" : [1, 2, 3, 4] countBy (($ mod 2) == 0),
 "countBy" : [1, 2, 3, 4] countBy (($ >=2) )
 }
