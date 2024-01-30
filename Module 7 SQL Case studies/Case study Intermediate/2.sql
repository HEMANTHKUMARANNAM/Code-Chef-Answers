-- Intermediate SQL Project - ABC Retail
-- High margin products are super important for ABC Retail's profitability.

-- Write a query to output the following

-- product_type, product_id, units_sold and month for all 'High_Margin' products sold in the year
-- JOIN 'monthly_sales' on 'division_product_sales' on the column 'month'
-- Expected output
-- ┌──────────────┬────────────┬────────────┬───────┐
-- │ product_type │ product_id │ units_sold │ month │
-- ├──────────────┼────────────┼────────────┼───────┤
-- │ Jeans        │ 6001       │ 300        │ Apr   │
-- │ Jeans        │ 6002       │ 400        │ Apr   │
-- │ Tshirt       │ 5001       │ 400        │ Apr   │
-- │ Tshirt       │ 5002       │ 600        │ Apr   │
-- │ Tshirt       │ 5003       │ 200        │ Apr   │
-- │ Jeans        │ 6001       │ 250        │ May   │
-- │ Jeans        │ 6002       │ 350        │ May   │
-- │ Tshirt       │ 5001       │ 350        │ May   │
-- │ Tshirt       │ 5002       │ 550        │ May   │
-- │ Tshirt       │ 5003       │ 150        │ May   │
-- │ Trousers     │ 3002       │ 270        │ Oct   │
-- │ Trousers     │ 3003       │ 450        │ Oct   │
-- │ Innerwear    │ 4001       │ 135        │ Nov   │
-- └──────────────┴────────────┴────────────┴───────┘




/* Write a query to output the following
- product_id, units_sold and month of sale for all high margin products sold in the year */




SELECT product_type, 
    product_id, 
    units_sold, 
    division_product_sales.month
FROM division_product_sales
INNER JOIN monthly_sales
    ON division_product_sales.month = monthly_sales.month
WHERE monthly_sales.type_of_product = 'High_Margin';





