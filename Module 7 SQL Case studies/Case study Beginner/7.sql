-- Case study - Covid impact on ABC Retail
-- Once you have reviewed the 'Financials' for the entire year with the CEO - you want to save your remarks again each row for future reference.

-- Task
-- Write a query which does the following

-- Add a column - 'Remarks' - at the end of the table
-- Add the following remark to all entries
-- For the month 'Mar', 'Apr', 'May' - the remark should be 'Loss due to Covid'
-- For all other months - the remark should be 'This is fine'
-- Output 10 entries from the table once done using Limit.
-- Expected output
-- ┌───────┬─────────┬─────────────┬──────────┬──────────────┬───────────────────┐
-- │ Month │ Revenue │ Profit_loss │ Division │ Product_type │      Remarks      │
-- ├───────┼─────────┼─────────────┼──────────┼──────────────┼───────────────────┤
-- │ Jan   │ 50000   │ 10000       │ Menswear │ Low_Margin   │ This is fine      │
-- │ Feb   │ 75000   │ 15000       │ Menswear │ Low_Margin   │ This is fine      │
-- │ Mar   │ 15000   │ -3000       │ Menswear │ Low_Margin   │ Loss due to Covid │
-- │ Apr   │ 15000   │ -3000       │ Menswear │ Low_Margin   │ Loss due to Covid │
-- │ May   │ 15000   │ -3000       │ Menswear │ Low_Margin   │ Loss due to Covid │
-- │ Jun   │ 12000   │ 2400        │ Menswear │ Low_Margin   │ This is fine      │
-- │ Jul   │ 12000   │ 2400        │ Menswear │ Low_Margin   │ This is fine      │
-- │ Aug   │ 12000   │ 2400        │ Menswear │ Low_Margin   │ This is fine      │
-- │ Sep   │ 50000   │ 10000       │ Menswear │ Low_Margin   │ This is fine      │
-- │ Oct   │ 60000   │ 12000       │ Menswear │ Low_Margin   │ This is fine      │
-- └───────┴─────────┴─────────────┴──────────┴──────────────┴───────────────────┘
-- Table structure
-- Table name - Financials

-- Month - Text
-- Revenue - Integer
-- Profit_loss - Integer
-- Division - Text
-- Product_type - Text
-- Add a column - Remarks with datatype Text






/* Write a query which does the following
- Add a column - 'Remarks' - at the end of the table
- Add the following remark to all entries
   - For the month 'Mar', 'Apr', 'May' - the remark should be 'Loss due to Covid'
   - For all other months - the remark should be 'This is fine' */


ALTER TABLE Financials
ADD Remarks TEXT default "This is fine";

update Financials
set Remarks = "Loss due to Covid"
where (Month = "Mar" or Month = "Apr" or Month = "May" );

select * from Financials
limit 10;