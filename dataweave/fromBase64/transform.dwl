%dw 2.0
import * from dw::core::Binaries
output application/json
---
{
   "1" : toBase64('Hello world'),
   "2":fromBase64('SGVsbG8gd29ybGQ=')
}
