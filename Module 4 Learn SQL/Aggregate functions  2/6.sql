
-- Write a query to output the following from the table 'employee'

-- Department and average payout on a single line
-- Where total payout of the department is more than 40
-- Rename the header for the 2nd column as 'avg_payout'
-- Expected output
-- ┌────────────┬──────────────────┐
-- │ Department │   avg_payout     │
-- ├────────────┼──────────────────┤
-- │ Hr         │ 23.9886666666667 │
-- │ Operations │ 11.227           │
-- │ Sales      │ 20.34625         │
-- └────────────┴──────────────────┘







/* Write a query to output the following
- Department and average payout on a single line
- Where total payout of the department is more than 40. */


SELECT Department,
AVG(Payout) AS avg_payout
FROM employee
GROUP BY DEPARTMENT
HAVING TOTAL(Payout) > 40;