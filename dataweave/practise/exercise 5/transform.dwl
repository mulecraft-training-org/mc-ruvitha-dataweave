%dw 2.0
output application/json
var infomsg = ( payload.logs filter ((item) -> item startsWith "[INFO]" ))
var infolist= infomsg map(item)->trim(item replace "[INFO]" with "" splitBy  "-" reduce $$)
var errormsg =  payload.logs filter ((item) -> item startsWith "[ERROR]" ) orderBy ((item) -> item )
var errorlist=errormsg map(item)-> trim( item  replace  "[ERROR]" with("") splitBy  "- " reduce $$)
---
{
    "errorCount":sizeOf( payload.logs filter ((item) -> item startsWith "[ERROR]")),
  "infoMessages": infolist,
  "sortedErrors" :errorlist,
  "randomLog": payload.logs [randomInt(sizeOf(payload.logs))],
   "currentLogTime" : now(),
}
