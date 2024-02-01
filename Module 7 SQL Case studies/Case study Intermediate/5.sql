-- Intermediate SQL Project - ABC Retail
-- Lets us identify product, selling price and the units sold of the highest selling product each month.

-- Write a query to perform the following

-- Join the tables - 'product_catalog' and division_product_sales'
-- Output product_id, selling_price, units_sold and month from the joined table
-- Remember the condition - we need to identify the product_id which is sold the most in each month
-- Order by the units_sold in descending order and then by the selling_price in descending order
-- Expected output
-- ┌────────────┬───────────────┬──────────┬───────┐
-- │ product_id │ selling_price │ max_sold │ month │
-- ├────────────┼───────────────┼──────────┼───────┤
-- │ 1002       │ 25            │ 700      │ Jan   │
-- │ 1002       │ 25            │ 650      │ Mar   │
-- │ 2002       │ 100           │ 600      │ Feb   │
-- │ 5002       │ 20            │ 600      │ Apr   │
-- │ 2002       │ 100           │ 550      │ Jun   │
-- │ 5002       │ 20            │ 550      │ May   │
-- │ 3003       │ 70            │ 500      │ Aug   │
-- │ 3003       │ 70            │ 450      │ Oct   │
-- │ 3002       │ 60            │ 300      │ Jul   │
-- │ 4002       │ 40            │ 250      │ Sep   │
-- │ 4002       │ 40            │ 225      │ Dec   │
-- │ 4001       │ 30            │ 135      │ Nov   │
-- └────────────┴───────────────┴──────────┴───────┘
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




/* Write a query to perform the following
- Join the tables - 'product_catalog' and division_product_sales' 
- Output product_id, selling_price, units_sold and month from the joined table
- Remember the condition - we need to identify the product_id which is sold the most in each month
- Order by the units_sold in descending order */

WITH ranked_products AS (
    SELECT
        dps.product_id,
        pc.selling_price,
        dps.units_sold,
        dps.month,
        RANK() OVER (PARTITION BY dps.month ORDER BY dps.units_sold DESC, pc.selling_price DESC) AS rank_in_month
    FROM
        division_product_sales dps
    JOIN
        product_catalog pc ON dps.product_id = pc.product_id
)


SELECT
    product_id,
    selling_price,
    units_sold as  max_sold,
    month
FROM
    ranked_products
WHERE
    rank_in_month = 1
ORDER BY
    units_sold DESC, selling_price DESC;
