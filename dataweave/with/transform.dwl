%dw 2.0
output application/json
---
payload replace  (/[a-z]/) with ("s")
