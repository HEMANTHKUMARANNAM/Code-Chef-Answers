-- Case study - Covid impact on ABC Retail
-- Case study:
-- You work in the CEO's team at ABC Retail Limited - an e-commerce apparel platform.
-- It is year end and you are doing a review of the pandemic year 2020 and its impact on revenue and profitability for your organisation.

-- Go through the following problems to test your SQL / analytical skills as part of the team.

-- First lets look at sample entries from the table - write a query to return 10 sample rows from the table - 'Financials'.

-- Expected output
-- ┌───────┬─────────┬─────────────┬──────────┬──────────────┐
-- │ Month │ Revenue │ Profit_loss │ Division │ Product_type │
-- ├───────┼─────────┼─────────────┼──────────┼──────────────┤
-- │ Jan   │ 50000   │ 10000       │ Menswear │ Low_Margin   │
-- │ Feb   │ 75000   │ 15000       │ Menswear │ Low_Margin   │
-- │ Mar   │ 15000   │ -3000       │ Menswear │ Low_Margin   │
-- │ Apr   │ 15000   │ -3000       │ Menswear │ Low_Margin   │
-- │ May   │ 15000   │ -3000       │ Menswear │ Low_Margin   │
-- │ Jun   │ 12000   │ 2400        │ Menswear │ Low_Margin   │
-- │ Jul   │ 12000   │ 2400        │ Menswear │ Low_Margin   │
-- │ Aug   │ 12000   │ 2400        │ Menswear │ Low_Margin   │
-- │ Sep   │ 50000   │ 10000       │ Menswear │ Low_Margin   │
-- │ Oct   │ 60000   │ 12000       │ Menswear │ Low_Margin   │
-- └───────┴─────────┴─────────────┴──────────┴──────────────┘




select * from Financials
limit 10;
