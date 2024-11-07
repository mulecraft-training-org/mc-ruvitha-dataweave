%dw 2.0
output application/json
---
{
    method1: payload distinctBy $ ,
    method2: payload distinctBy(value) -> value 
}
