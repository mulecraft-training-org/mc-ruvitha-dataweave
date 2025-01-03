%dw 2.0
output application/json
---
{
    "1": unzip([[2,"a"],[4]]),
    "2": unzip([[1]]),
    "3": [2,"h","i"]zip([[2,"a"],[4]])
}
