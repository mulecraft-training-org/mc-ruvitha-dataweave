%dw 2.0
output application/json
var data = payload.students map { 
    name:$.name,
    averagescores: (avg($.scores map(score)->score  default 0))as String {format: "##.00"}} maxBy ((item) -> item.averagescores )

var data1 = payload.students map { 
    averagescores: (sum($.scores filter(score)-> score != null)/sizeOf($.scores filter(score)-> score != null))as String {format: "##.00"}}  minBy ((item) -> item.averagescores )


var random = payload.students map {
     id: $.id,
     name:$.name,
     boostedscores: ((avg($.scores map(score)->score  default 0))+ randomInt(10)) as String {format: "##"}}

---
{
    "topStudent":data,
    "minAverageScore":data1.averagescores,
    "studentsWithRandomBoost":random,
    "currentTime" : now(),

   
  "minAverageScore": 65,
  
    }




