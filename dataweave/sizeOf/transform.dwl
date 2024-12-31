%dw 2.0
output application/json
---
{
    "1": sizeOf([ "a", "b", "c"]),
    "2": sizeOf([ ]),
    "3": sizeOf([{},{}]),
     "4": sizeOf([[1,2,3],[4]])
}
