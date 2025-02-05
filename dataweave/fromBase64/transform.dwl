%dw 2.0
import fromBase64 from dw::core::Binaries
output application/json
---
fromBase64('SGVsbG8sIFdvcmxkIQ==')
