%dw 2.0
output application/json
var a = sum(payload.transactions filter ((item, index) -> item.category == "Income") map ((item, index) -> item.amount ))
var b = sum(payload.transactions filter ((item, index) -> item.category == "Expense")map ((item, index) -> item.amount ))

/* Requirements:
 * Make certain that all data all records meet these rules: business data business information and ensure all transactions have required fields.
 * Aggregate total income and total expenses from the transaction records.
 * Determine the value of net savings by subtracting total expenses from total income.
 * Organize items into categories based on transactions by category for detailed reporting.
 * Adjust the presentation of the business data to include a summary of financial metrics.
 * Make certain that all data all calculations are accurate and reflect the latest data.
 *
 * Expected Output:
 * {
 *   "summary": {
 *     "totalIncome": 3000,
 *     "totalExpense": 650,
 *     "netSavings": 2350,
 *     "transactionsByCategory": {
 *       "Investment": [
 *         {
 *           "transactionId": "T001",
 *           "amount": 1500
 *         }
 *       ],
 *       "Expense": [
 *         {
 *           "transactionId": "T002",
 *           "amount": 200
 *         },
 *         {
 *           "transactionId": "T004",
 *           "amount": 450
 *         }
 *       ],
 *       "Income": [
 *         {
 *           "transactionId": "T003",
 *           "amount": 3000
 *         }
 *       ]
 *     }
 *   }
 * }
 */
---
{
     "summary": {
      "totalIncome": sum(payload.transactions filter ((item, index) -> item.category == "Income") map ((item, index) -> item.amount )),
      "totalExpense": sum(payload.transactions filter ((item, index) -> item.category == "Expense")map ((item, index) -> item.amount )),
       "netSavings": a-b,
        "transactionsByCategory": {
       "Investment":payload.transactions filter ((item, index) -> item.category == "Investment") map ((item, index) -> {"transactionId" : item.transactionId,
    "amount": item.amount           }),
     "Expense":payload.transactions filter ((item, index) -> item.category == "Expense") map ((item, index) -> {"transactionId" : item.transactionId,
    "amount": item.amount           }),
     "Income":payload.transactions filter ((item, index) -> item.category == "Income") map ((item, index) -> {"transactionId" : item.transactionId,
    "amount": item.amount           })


        }
     }
}
