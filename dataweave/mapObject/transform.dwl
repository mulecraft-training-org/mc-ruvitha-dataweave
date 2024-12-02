%dw 2.0
output application/json
---
{"1": payload mapObject ((value, key, index) -> (key) : index),
"2": payload mapObject ((value, key, index) -> key : index),
"3":payload mapObject ((value, key, index) -> value : value)}
