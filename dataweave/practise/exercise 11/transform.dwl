%dw 2.0
import dw::core::Arrays
output application/json

/* Requirements:
 * Determine the value of the total amount of all shipped orders.
 * Organize items into categories based on pending orders by customer ID.
 * Identify which customers have pending orders and list those orders.
 * Make certain that all data the business data clearly distinguishes between shipped and pending orders.
 *
 * Expected Output:
 * {
 *   "shippedOrdersTotalAmount": 900,
 *   "pendingOrdersByCustomerId": {
 *     "1": [],
 *     "2": [
 *       {
 *         "orderId": 102,
 *         "amount": 150
 *       },
 *       {
 *         "orderId": 105,
 *         "amount": 200
 *       }
 *     ],
 *     "3": []
 *   }
 * }
 */
---
{
    "shippedOrdersTotalAmount" : sum(payload.orders  filter($.status=="shipped")map ((item, index) -> item.amount)),
    "pendingOrdersByCustomerId": payload.orders groupBy ((item, index) -> item.customerId ) mapObject ((value, key, index) -> (key) : value filter ((item, index) -> item.status=="pending") map ((item, index) -> {"orderId" : item.orderId,
  "amount": item.amount  } ) )
}
