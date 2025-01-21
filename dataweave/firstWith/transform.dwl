%dw 2.0
import * from dw::core::Arrays
output application/json
---
{ "1" : [1, 2, 3, 4] firstWith ((item, index) -> item >2 ) ,
 "2" : [1, 2, 3, 4] firstWith ((item, index) -> index >2 ),
 
 
 }
