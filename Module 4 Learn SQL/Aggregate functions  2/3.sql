-- Write a query to output the following on separate lines from the table 'Employee'

-- Total Payout for the Product department.
-- Rename the column header as 'product_total_pay'
-- Average Payout for Operations department.
-- Rename the column header as 'ops_avg_pay'
-- Expected output
-- ┌───────────────────┐
-- │ product_total_pay │
-- ├───────────────────┤
-- │ 20.528            │
-- └───────────────────┘
-- ┌─────────────┐
-- │ ops_avg_pay │
-- ├─────────────┤
-- │ 12.41975    │
-- └─────────────┘





/* Write a query to output the following on separate lines
- Total Payout for the Product department.
- Average Payout for Operations department. */


SELECT TOTAL(Payout) AS product_total_pay
FROM employee
Where department  = 'Product';


SELECT AVG(Payout) AS ops_avg_pay 
FROM employee
Where department = 'Operations';