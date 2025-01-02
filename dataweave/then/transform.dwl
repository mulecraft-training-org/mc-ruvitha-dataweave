%dw 2.0
output application/json
---
{
    "1": ["mariano", "de Achaval"]
        reduce ((item, accumulator) -> item ++ accumulator)
        then ((result) -> sizeOf(result)) ,
    "2":["mariano", "de Achaval"]
        map ((item, index) -> upper(item)) 
        then { name: $[0], lastname:$[1]},
    "3":1,
}
