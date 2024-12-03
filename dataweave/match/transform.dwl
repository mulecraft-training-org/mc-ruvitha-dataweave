%dw 2.0
output application/json
---
payload flatMap ($ match (/([a-z]*)el([a-z]*)/))
