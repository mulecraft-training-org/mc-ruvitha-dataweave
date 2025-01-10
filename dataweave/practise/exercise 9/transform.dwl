%dw 2.0
output application/json

/* Requirements:
 * Use sizeOf to count the number of delivered items
 * Filter the logistics data based on status
 *
 * Expected Output:
 * {
 *   "deliveredCount": 2 filter (value, index) -> (value == "delivered")
 * }
 */  
---
sizeOf(payload.logisticsData.status find ("delivered"))
