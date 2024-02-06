-- Intermediate SQL Project - ABC Retail
-- Let us identify the worst performing month for each product_id in terms of units sold.

-- Write a query to perform the following

-- Join the tables - 'product_catalog' and division_product_sales'
-- Output product_id, units_sold and month from the joined table
-- Remember the condition - we need to identify the worst performing month for each product_id in terms of units sold
-- Order by product_id
-- Table Format as follows:
-- Table 1: monthly_sales

-- month	revenue	profit_loss	division	type_of_product
-- Jan	50000	10000	Menswear	Low_Margin
-- Feb	75000	15000	Womenswear	High_Margin
-- Table 2: division_product_sales

-- division	product_type	product_id	units_sold	month
-- Menswear	Tshirt	1001	500	Jan
-- Womenswear	Jeans	2002	700	Feb
-- Table 3: product_catalog

-- product_id	product_type	division	margin_type	selling_price	profit_per_product
-- 1001	Tshirt	Menswear	Low_Margin	20	5
-- 2002	Jeans	Womenswear	High_Margin	80	40




create table data as
SELECT *,
RANK() OVER (PARTITION BY product_id ORDER BY units_sold ASC , month ASC) AS sales_rank
FROM 
division_product_sales
ORDER by product_id;


SELECT product_id,units_sold as min_sold ,month 
from data
WHERE sales_rank = 1;






-- /* Solution as follows */

-- -- This section of the query is selecting rows to output
-- select pc.product_id,
--         dps.min_sold, 
--         dps.month
-- from product_catalog as pc

-- -- This section of the subquery is finding the worst performing month for each product_id in terms of units sold
-- join (
--     SELECT 
--         s1.product_id,
--         s1.units_sold as min_sold,
--         s1.month 
--     FROM division_product_sales as s1
--     WHERE s1.units_sold = (
--         SELECT 
--             MIN(s2.units_sold) 
--         FROM division_product_sales as s2 
--         WHERE s2.product_id = s1.product_id
--         )
--     ) as dps

-- on (pc.product_id = dps.product_id)
-- order by pc.product_id;