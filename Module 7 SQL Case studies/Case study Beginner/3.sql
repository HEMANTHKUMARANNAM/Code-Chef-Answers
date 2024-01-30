-- Case study - Covid impact on ABC Retail
-- Write a query to output the following

-- Month-wise revenue and loss for the complete year 2020
-- Order by decreasing profits for each month
-- Rename the monthwise revenue column as 'monthly_revenue' and montwise profit / loss column as 'monthly_pnl' while running the query
-- ┌───────┬─────────────────┬─────────────┐
-- │ Month │ monthly_revenue │ monthly_pnl │
-- ├───────┼─────────────────┼─────────────┤
-- │ Dec   │ 884000          │ 144000      │
-- │ Feb   │ 828750          │ 135000      │
-- │ Nov   │ 773500          │ 126000      │
-- │ Oct   │ 663000          │ 108000      │
-- │ Sep   │ 552500          │ 90000       │
-- │ Jan   │ 552500          │ 90000       │
-- │ Jun   │ 132600          │ 21600       │
-- │ Jul   │ 132600          │ 21600       │
-- │ Aug   │ 132600          │ 21600       │
-- │ May   │ 165750          │ -36000      │
-- │ Mar   │ 165750          │ -36000      │
-- │ Apr   │ 165750          │ -36000      │
-- └───────┴─────────────────┴─────────────┘
-- Table structure
-- Table name - Financials

-- Month - Text
-- Revenue - Integer
-- Profit_loss - Integer
-- Division - Text
-- Product_type - Text




/* Write a query to output the following
- Month-wise revenue and loss for the complete year 2020 */



select Month, SUM(Revenue)  as monthly_revenue,SUM(Profit_loss) as monthly_pnl from Financials
group by Month 
ORDER BY Profit_loss DESC ;
