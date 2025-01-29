%dw 2.0
import * from dw::core::Arrays
output application/json

/* Requirements:
 * Include only the items that the manufacturing processes to include only completed products.
 * Add up all values in the quantities of completed products to get total quantities.
 * Determine how many items match the value of processes that are currently in progress.
 * Structure the business data to separate completed products and the count of in-progress processes.
 *
 * Expected Output:
 * {
 *   "completedProducts": [
 *     {
 *       "product": "Widget A",
 *       "totalQuantity": 100
 *     },
 *     {
 *       "product": "Widget C",
 *       "totalQuantity": 200
 *     },
 *     {
 *       "product": "Widget D",
 *       "totalQuantity": 50
 *     }
 *   ],
 *   "inProgressCount": 2
 * }
 */
---
{"completedProducts" : payload.manufacturingProcesses filter ((item, index) -> item.status == "completed")map ((item, index) ->{"product": item.product,
 "totalQuantity": item.quantity
}),
 "inProgressCount": sizeOf(payload.manufacturingProcesses filter ((item, index) -> item.status == "in progress")),
 "inProgressCount": payload.manufacturingProcesses countBy ((item) -> item.status == "in progress" )
}
