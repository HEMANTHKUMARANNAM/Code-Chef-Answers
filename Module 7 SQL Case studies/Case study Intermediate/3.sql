-- Intermediate SQL Project - ABC Retail
-- Write a query to output the following for the 'division_product_sales' table

-- product_id, product_type, average units sold in the year
-- group by the product_id
-- rename the average units sold column as 'avg_sold'
-- Expected output
-- ┌────────────┬──────────────┬──────────┐
-- │ product_id │ product_type │ avg_sold │
-- ├────────────┼──────────────┼──────────┤
-- │ 1001       │ Tshirt       │ 475.0    │
-- │ 1002       │ Tshirt       │ 675.0    │
-- │ 1003       │ Tshirt       │ 275.0    │
-- │ 2001       │ Jeans        │ 375.0    │
-- │ 2002       │ Jeans        │ 575.0    │
-- │ 3001       │ Trousers     │ 190.0    │
-- │ 3002       │ Trousers     │ 285.0    │
-- │ 3003       │ Trousers     │ 475.0    │
-- │ 4001       │ Innerwear    │ 142.5    │
-- │ 4002       │ Innerwear    │ 237.5    │
-- │ 5001       │ Tshirt       │ 375.0    │
-- │ 5002       │ Tshirt       │ 575.0    │
-- │ 5003       │ Tshirt       │ 175.0    │
-- │ 6001       │ Jeans        │ 275.0    │
-- │ 6002       │ Jeans        │ 375.0    │
-- └────────────┴──────────────┴──────────┘
-- Sample tables as follows:
-- Table 1: monthly_sales

-- month	revenue	profit_loss	division	type_of_product
-- Jan	50000	10000	Menswear	Low_Margin
-- Feb	75000	15000	Womenswear	High_Margin
-- Mar	15000	-3000	Kidswear	New_Product
-- Table 2: division_product_sales

-- division	product_type	product_id	units_sold	month
-- Menswear	Tshirt	1001	500	Jan
-- Womenswear	Jeans	2002	700	Feb
-- Kidswear	Trousers	4002	300	Mar
-- Table 3: product_catalog

-- product_id	product_type	division	margin_type	selling_price	profit_per_product
-- 1001	Tshirt	Menswear	Low_Margin	20	5
-- 2002	Jeans	Womenswear	High_Margin	80	40
-- 3001	Trousers	Kidswear	New_Product	30	10







/* Write a query to output the following for the 'division_product_sales' table
- product_id, product_type, average count of units sold in the year
- group by the product_id */

select product_id,product_type, AVG(units_sold) AS avg_sold
from division_product_sales
group by product_id;


