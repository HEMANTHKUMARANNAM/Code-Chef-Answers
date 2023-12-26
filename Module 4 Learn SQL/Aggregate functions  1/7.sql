-- The Query written in the console is trying to find the minimum and maximum value of payout rounded to 2 decimal places in the table employee.
-- Debug this query to output the minimum and maximum value of payout, rounded to 2 decimal places.

-- Your database is named 'employee' and has the following columns

-- Id (INT)
-- Name (VARCHAR),
-- Email (VARCHAR),
-- Payout(INT)
-- Expected output
-- ┌─────────┬─────────┐
-- │ min_pay │ max_pay │
-- ├─────────┼─────────┤
-- │ 123.54  │ 789.43  │
-- └─────────┴─────────┘






/* **Debug this query** to output the minimum and maximum value of payout, round to 2 decimal places. */


select 
MIN(round(Payout,2)) as 'min_pay',
MAX(round(Payout,2)) as 'max_pay'
from employee;

