%dw 2.0
output application/json
---
{
    "1" : "123-234-432" replace  /.*-/ with " ",
    "2" : "abc123def" replace /[b1]/ with "ID",
    "3" :  "my123" replace /(\d+)/ with "-"
}
