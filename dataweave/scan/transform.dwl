%dw 2.0
output application/json
---
{
    "1": "Mari" scan  (/(M)/),
    "2": "Mari" scan("M"),
    "3":flatten("anypt@mulesoft.com" scan(/([a-z]*@([a-z]*)).com/)),
    "4":"The amounts are 100, 250 and 300." scan (/\d+/),
    "5":"This is a Simple example of the Scan function." scan /[A-Z][a-z]+/
}
