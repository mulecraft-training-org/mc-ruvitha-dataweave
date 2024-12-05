%dw 2.0
output application/json
---
{
    "1":  min(payload.b),
    "2": payload.b minBy($),
    "3": payload.d minBy($.a)
}
