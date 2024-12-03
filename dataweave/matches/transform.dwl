%dw 2.0
output application/json
---
payload  flatMap ($ matches (/([a-z]*)el([a-z]*)/))
