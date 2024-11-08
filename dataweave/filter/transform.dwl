%dw 2.0
output application/json
---
[payload.people filter ((item, index) -> item.name =="Tomo"),
payload.people filter ($.age >29)]
