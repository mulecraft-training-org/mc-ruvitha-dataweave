%dw 2.0
output application/json
---
{"1": price: random(),
"2": price: random()  * 1000, 
"3":price: randomInt(50) }
