%dw 2.0
output application/json
---
{
    "1": payload.a onNull 4,
    "2": payload.b onNull 4
}
