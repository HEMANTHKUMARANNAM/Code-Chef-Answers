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