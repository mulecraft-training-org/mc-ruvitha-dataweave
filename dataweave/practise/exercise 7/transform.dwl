%dw 2.0
output application/json

/* Requirements:
 * Use reduce to sum the energy consumption values
 * Output the total consumption
 *
 * Expected Output:
 * {
 *   "totalConsumption": 1000
 * }
 */
---
payload.energyConsumption reduce ((item, accumulator) -> item+ accumulator )
