%dw 2.0
output application/json
---
{"1": payload flatMap (item) -> ["abc"],
  "2": payload flatMap $,
  "3": payload flatMap (item)->[item,item],
  "4": payload flatMap $$
}
