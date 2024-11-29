%dw 2.0
output application/json
---
{
 "false": (payload filter(item) ->sizeOf(item.merchantName )>7),
 "true": (payload filter(item) -> sizeOf(item.merchantName )<=7  )
}
