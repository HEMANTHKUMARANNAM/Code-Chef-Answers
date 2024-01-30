-- Case study - Covid impact on ABC Retail
-- Write a query to output all entries of the 'Financials' table

-- in the month of March when the pandemic lockdowns were initiated
-- and in the month of February - just before the pandemic.
-- Expected output
-- ┌───────┬─────────┬─────────────┬────────────┬──────────────┐
-- │ Month │ Revenue │ Profit_loss │  Division  │ Product_type │
-- ├───────┼─────────┼─────────────┼────────────┼──────────────┤
-- │ Feb   │ 75000   │ 15000       │ Menswear   │ Low_Margin   │
-- │ Mar   │ 15000   │ -3000       │ Menswear   │ Low_Margin   │
-- │ Feb   │ 150000  │ 37500       │ Menswear   │ High_Margin  │
-- │ Mar   │ 30000   │ -7500       │ Menswear   │ High_Margin  │
-- │ Feb   │ 30000   │ -7500       │ Menswear   │ New_Products │
-- │ Mar   │ 6000    │ -1500       │ Menswear   │ New_Products │
-- │ Feb   │ 82500   │ 15000       │ Womenswear │ Low_Margin   │
-- │ Mar   │ 16500   │ -3000       │ Womenswear │ Low_Margin   │
-- │ Feb   │ 165000  │ 37500       │ Womenswear │ High_Margin  │
-- │ Mar   │ 33000   │ -7500       │ Womenswear │ High_Margin  │
-- │ Feb   │ 33000   │ -7500       │ Womenswear │ New_Products │
-- │ Mar   │ 6600    │ -1500       │ Womenswear │ New_Products │
-- │ Feb   │ 86250   │ 15000       │ Kidswear   │ Low_Margin   │
-- │ Mar   │ 17250   │ -3000       │ Kidswear   │ Low_Margin   │
-- │ Feb   │ 172500  │ 37500       │ Kidswear   │ High_Margin  │
-- │ Mar   │ 34500   │ -7500       │ Kidswear   │ High_Margin  │
-- │ Feb   │ 34500   │ -7500       │ Kidswear   │ New_Products │
-- │ Mar   │ 6900    │ -1500       │ Kidswear   │ New_Products │
-- └───────┴─────────┴─────────────┴────────────┴──────────────┘
-- Table structure
-- Month - Text
-- Revenue - Integer
-- Profit_loss - Integer
-- Division - Text
-- Product_type - Text







/*Write a query to output all entries of the table
- in the month of March when the pandemic lockdowns were initiated
- and in the month of February - just before the pandemic. */

select * from Financials
where  Month = "Mar" OR Month = "Feb";

