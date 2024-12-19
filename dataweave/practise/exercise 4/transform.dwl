%dw 2.0
output application/json
var data = avg(payload.products 
    map ((item) ->item.price )) 

var variance= sum(payload.products 
    map ((item) ->(item.price - data) *(item.price - data)))/sizeOf(payload.products)
---
{
    "pricesWithTax": payload.products 
    map ((item, index) ->item.price + (item.price*                payload.taxRate)),
    "mostExpensiveProduct": payload.products  maxBy ((item) -> item.price),
    "cheapestProduct":payload.products  minBy ((item) -> item.price),
    "sortedPrices":payload.products map ((item) ->item.price)orderBy $,
    "priceStatistics": {"averagePrice":data,
                        "priceVariance":variance } ,




 
}




