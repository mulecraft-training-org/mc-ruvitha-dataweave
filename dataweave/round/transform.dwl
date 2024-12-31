%dw 2.0
output application/json
---
{
    "1": round(2.4),
    "2": round(2.4234),
    "3": 12.34325 as String {format:".##"}
}
