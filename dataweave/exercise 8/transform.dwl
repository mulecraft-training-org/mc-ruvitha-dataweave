%dw 2.0
output application/json

/* Requirements:
 * Calculate the average of crop yields using valuesOf
 * Round the result to two decimal places
 *
 * Expected Output:
 * {
 *   "averageYield": 1566.67
 * }
 */
---
{ "averageYield": avg(valuesOf(payload.cropYield)) as String{format: "##.00"} as Number}
