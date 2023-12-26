-- The AVG() function is used to calculate the Average of values within a specific column.
-- It takes the column name as argument and outputs the resulting average.

-- Below is the query to find the Average Age from the table customer.

-- SELECT SUM(Sale)
-- FROM customer;
-- Task
-- Write a query to find the Average of the column 'Payout' from the table 'employee'.
-- Rename the column header as 'avg_payout'.
-- Code it out in the IDE.

-- Expected output
-- ┌──────────────┐
-- │ total_payout │
-- ├──────────────┤
-- │ 155.339      │
-- └──────────────┘





/* Write a query to find the Average of the column 'Payout' from the table 'employee'. */


SELECT AVG(Payout) AS avg_payout 
FROM employee;