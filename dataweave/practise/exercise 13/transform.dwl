%dw 2.0
output application/json

/* Requirements:
 * Make certain that all data all records meet these rules: the last service date for each vehicle to ensure it is in the past.
 * Determine the value of the next service date based on the last service date and mileage thresholds.
 * Determine the type of service required based on vehicle type and mileage.
 * Aggregate vehicles into a list of those due for service within the next six months.
 *
 * Expected Output:
 * {
 *   "vehiclesDueForService": [
 *     {
 *       "id": "V001",
 *       "nextServiceDate": "2023-07-15T10:00:00Z",
 *       "serviceType": "Full Service"
 *     },
 *     {
 *       "id": "V002",
 *       "nextServiceDate": "2023-09-20T10:00:00Z",
 *       "serviceType": "Oil Change"
 *     },
 *     {
 *       "id": "V003",
 *       "nextServiceDate": "2023-08-10T10:00:00Z",
 *       "serviceType": "Full Service"
 *     }
 *   ]
 * }
 */
---
{
     "vehiclesDueForService" : payload.vehicles map ((item, index) -> {"id": item.id,
    "nextServiceDate" : item.lastServiceDate  + |P6M|,
    "serviceType" : if(item."type" == "Truck")
    "Full Service " else "Oil Change"})

}
