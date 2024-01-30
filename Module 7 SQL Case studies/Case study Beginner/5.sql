-- Case study - Covid impact on ABC Retail
-- In your deep-dive with the finance team, you notice that the recorded revenue and profit / loss is incorrect for the following entries.

-- Task
-- Write a query which does the following

-- Update the table to reflect these entries
-- Revenue in 'Jul' for 'Low_Margin' 'Menswear' needs to be updated to 25000
-- Revenue in 'Aug' for 'New_Products' 'Womenswear' needs to be updated to 10000
-- Output all entries of these 2 rows to validate that the updates have been completed
-- Expected output
-- ┌───────┬─────────┬─────────────┬────────────┬──────────────┐
-- │ Month │ Revenue │ Profit_loss │  Division  │ Product_type │
-- ├───────┼─────────┼─────────────┼────────────┼──────────────┤
-- │ Jul   │ 25000   │ 2400        │ Menswear   │ Low_Margin   │
-- │ Aug   │ 10000   │ -1200       │ Womenswear │ New_Products │
-- └───────┴─────────┴─────────────┴────────────┴──────────────┘
-- Table structure
-- Table name - Financials

-- Month - Text
-- Revenue - Integer
-- Profit_loss - Integer
-- Division - Text
-- Product_type - Text






/* Write a query which does the following
- Update the table to reflect these entries
Revenue in 'Jul' for 'Low_margin' 'Menswear' needs to be updated to 25000
Revenue in 'Aug' for 'New_products' 'Womenswear' needs to be updated to 10000
- Output all entries of these 2 rows to validate that the updates have been completed */

UPDATE Financials
SET Revenue = 25000
WHERE Month = "Jul" and Product_type = "Low_Margin" and Division = "Menswear";

UPDATE Financials
SET Revenue = 10000
WHERE Month = "Aug" and Product_type = "New_Products" and Division = "Womenswear";


select * from Financials
where (Month = "Jul" and Product_type = "Low_Margin" and Division = "Menswear") or (Month = "Aug" and Product_type = "New_Products" and Division = "Womenswear");