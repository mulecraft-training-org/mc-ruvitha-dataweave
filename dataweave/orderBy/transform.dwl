%dw 2.0
output application/json
---
{
    "1": payload orderBy(x) -> x.name,
    "2": payload orderBy($.age),
    "3": payload orderBy(-$.age),
    "4": payload orderBy($.name),
    "5": payload orderBy($[0])
}
