-- Case study - Covid impact on ABC Retail
-- You need to find the Annual Revenue and Profit_loss aggregated by Product_type.

-- Task
-- Write a query which does the following

-- Output the columns Product_type, Total revenue and Total Profit_loss. Group by the product_type
-- Rename the columns as 'Annual_Revenue' and 'Annual_PnL' respectively
-- Expected output
-- ┌──────────────┬────────────────┬────────────┐
-- │ Product_type │ Annual_revenue │ Annual_PnL │
-- ├──────────────┼────────────────┼────────────┤
-- │ High_Margin  │ 3029000        │ 564000     │
-- │ Low_Margin   │ 1514500        │ 225600     │
-- │ New_Products │ 605800         │ -139800    │
-- └──────────────┴────────────────┴────────────┘
-- Table structure
-- Table name - Financials

-- Month - Text
-- Revenue - Integer
-- Profit_loss - Integer
-- Division - Text
-- Product_type - Text






/* Write a query which does the following
- Output the columns Product_type, Total revenue and Total Profit_loss. Group by the product_type
- Rename the columns as 'Annual_Revenue' and 'Annual_PnL' respectively */


select Product_type, sum(revenue) as  Annual_revenue , sum(Profit_loss) as Annual_PnL from Financials
group by Product_type; 