%dw 2.0
output application/json
---
{"now": now(),
"Date" : now() as String {format: "y-dd-M"},
"Time":now() as String {format: "H-m-s"},
 day: now().day,
 month: now().month,
  year: now().year
}
