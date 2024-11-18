%dw 2.0
output application/json
---
{"1": payload.items.label groupBy "mylabel",
"2": payload.items groupBy (item)  -> item.label
}
