%dw 2.0
output application/json

/* Requirements:
 * Use reduce to calculate total yield of crops
 * Extract yield values from each crop
 * Sum the yield values
 *
 * Expected Output:
 * {
 *   "totalYield": 7.7
 * }
 */
---
payload.crops reduce ((item, accumulator) ->  "totalYield" :accumulator."yield" + item."yield")
