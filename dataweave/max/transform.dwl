%dw 2.0
output application/json
---
{
    "1": max(payload.a),
    "2": payload.b maxBy ($),
     "3": payload.d maxBy ($.a),
}
