%dw 2.0
output application/json
---
{"1" :payload filterObject ((value, key, index) -> key startsWith  "name"),
 "2" :payload filterObject ((value, key, index) -> value != 25 ),
 "3" :payload filterObject $ != 25 

}
