-- Intermediate SQL Project - ABC Retail
-- Lets build on the previous problem.
-- In which months of the year was the units sold higher than the annual average for the each product_id?

-- Write a query to output the following

-- product_id, product_type, units_sold and the month where the units sold is higher than annual average for the given product_id
-- Hint: Use sub-queries on the 'division_product_sales' table to solve this problem

-- Expected output
-- ┌────────────┬──────────────┬────────────┬───────┐
-- │ product_id │ product_type │ units_sold │ month │
-- ├────────────┼──────────────┼────────────┼───────┤
-- │ 1001       │ Tshirt       │ 500        │ Jan   │
-- │ 1002       │ Tshirt       │ 700        │ Jan   │
-- │ 1003       │ Tshirt       │ 300        │ Jan   │
-- │ 2001       │ Jeans        │ 400        │ Feb   │
-- │ 2002       │ Jeans        │ 600        │ Feb   │
-- │ 3001       │ Trousers     │ 200        │ Jul   │
-- │ 3002       │ Trousers     │ 300        │ Jul   │
-- │ 3003       │ Trousers     │ 500        │ Aug   │
-- │ 4001       │ Innerwear    │ 150        │ Aug   │
-- │ 4002       │ Innerwear    │ 250        │ Sep   │
-- │ 5001       │ Tshirt       │ 400        │ Apr   │
-- │ 5002       │ Tshirt       │ 600        │ Apr   │
-- │ 5003       │ Tshirt       │ 200        │ Apr   │
-- │ 6001       │ Jeans        │ 300        │ Apr   │
-- │ 6002       │ Jeans        │ 400        │ Apr   │
-- └────────────┴──────────────┴────────────┴───────┘
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








/* Write a query to output the following
- product_id, product_type, units_sold and the month where the units sold is higher than annual average for the given product_id
- Use sub-queries to achieve this */


SELECT dps.product_id, dps.product_type, dps.units_sold, dps.month
FROM division_product_sales AS dps
JOIN (
    SELECT product_id, AVG(units_sold) AS avg_units_sold
    FROM division_product_sales
    GROUP BY product_id
) AS avg_sales ON dps.product_id = avg_sales.product_id
WHERE dps.units_sold > avg_sales.avg_units_sold;