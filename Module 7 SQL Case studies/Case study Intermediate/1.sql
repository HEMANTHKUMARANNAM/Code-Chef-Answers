-- Intermediate SQL Project - ABC Retail
-- Case study:
-- You work in the CEO's team at ABC Retail Limited - an e-commerce apparel platform.
-- We will analyse the following in this project

-- Which products contributed more to revenue
-- Which months did specific products sell more in
-- What was the selling price / profit margin of the highest selling product each month
-- And more!!!

-- Task
-- First lets look at sample entries from the tables - Write a query to return 5 sample rows from each of the tables

-- 'monthly_sales'
-- 'division_product_sales'
-- 'product_catalog'
-- Table Information
-- 'monthly sales' contains the month-wise revenue, profit & loss categorised by the division and product_type
-- There are 3 divisions - Menswear, Womenswear, Kidswear
-- Each division has 3 types of product - Low_margin, High_margin and New_product
-- 'division_product_sales' splits sales into each product line and the count of products sold
-- Each division can have product_type as Tshirt, Jeans, Trousers, Innerwear
-- Each of the above product_types will be sold each month
-- 'product_catalog' provide the selling price, profit margin for each SKU / product
-- product_catalog also contains the tagging of a product as Low_margin / High_margin / New_product and Tshirt / Jeans / Trousers / Innerwear






/* Write a query to return 5 sample rows from each of the tables
- 'monthly_sales' 
- 'division_product_sales'
- 'product_catalog' */


select * from monthly_sales
limit 5;

select * from division_product_sales
limit 5;

select * from product_catalog
limit 5;







-- ┌───────┬─────────┬─────────────┬──────────┬─────────────────┐
-- │ month │ revenue │ profit_loss │ division │ type_of_product │
-- ├───────┼─────────┼─────────────┼──────────┼─────────────────┤
-- │ Jan   │ 50000   │ 10000       │ Menswear │ Low_Margin      │
-- │ Feb   │ 75000   │ 15000       │ Menswear │ Low_Margin      │
-- │ Mar   │ 15000   │ -3000       │ Menswear │ Low_Margin      │
-- │ Apr   │ 90000   │ 22500       │ Menswear │ High_Margin     │
-- │ May   │ 60000   │ 12000       │ Menswear │ High_Margin     │
-- └───────┴─────────┴─────────────┴──────────┴─────────────────┘
-- ┌──────────┬──────────────┬────────────┬────────────┬───────┐
-- │ division │ product_type │ product_id │ units_sold │ month │
-- ├──────────┼──────────────┼────────────┼────────────┼───────┤
-- │ Menswear │ Tshirt       │ 1001       │ 500        │ Jan   │
-- │ Menswear │ Tshirt       │ 1002       │ 700        │ Jan   │
-- │ Menswear │ Tshirt       │ 1003       │ 300        │ Jan   │
-- │ Menswear │ Jeans        │ 2001       │ 400        │ Jan   │
-- │ Menswear │ Jeans        │ 2002       │ 600        │ Jan   │
-- └──────────┴──────────────┴────────────┴────────────┴───────┘
-- ┌────────────┬──────────────┬──────────┬─────────────┬───────────────┬────────────────────┐
-- │ product_id │ product_type │ division │ margin_type │ selling_price │ profit_per_product │
-- ├────────────┼──────────────┼──────────┼─────────────┼───────────────┼────────────────────┤
-- │ 1001       │ Tshirt       │ Menswear │ Low_Margin  │ 20            │ 5                  │
-- │ 1002       │ Tshirt       │ Menswear │ Low_Margin  │ 25            │ 7                  │
-- │ 1003       │ Tshirt       │ Menswear │ Low_Margin  │ 30            │ 9                  │
-- │ 2001       │...

