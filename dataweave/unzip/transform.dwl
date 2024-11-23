%dw 2.0
output application/json
---
{"1" :unzip (payload ."1"),
"2" : unzip (payload."2")}
