%dw 2.0
output application/json
---
{"1": payload reduce ($),
"2": payload reduce ($$),
"3": payload reduce ($$ + $),
"4": payload reduce ($$ ++ $),
"5": payload reduce ((item, ac= {}) ->  ac ++ { a: item }),
"6":  [1,2,3] reduce ((item,acc = 2) -> acc + item),
"5": payload reduce ($ ++ $$)

}
