-- Write a query to output the following from the employee 'table':

-- Round the column Payout to 2 decimal places.
-- Rename the column header as 'payout'
-- Expected output
-- ┌──────────────────┐
-- │ payout           │
-- ├──────────────────┤
-- │ 22.66            │
-- │ 6.55             │
-- │ 25.18            │
-- │ 0.71             │
-- │ 24.01            │
-- │ 5.48             │
-- │ 18.56            │
-- │ 13.65            │
-- │ 18.74            │
-- │ 19.82            │
-- └──────────────────┘
-- Did you like the problem?



/* Write a query to output the following:
- Round the column **Payout** to 2 decimal places. */

Select ROUND( Payout, 2) AS payout 
FROM employee; 