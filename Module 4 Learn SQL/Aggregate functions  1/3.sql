-- The MAX() and MIN() functions retrieve the maximum and minimum values from a column, correspondingly.

-- Below is the query to find the highest and lowest age of the customers from the table customer

-- SELECT MAX(Age)
-- FROM customer;
-- SELECT MIN(Age)
-- FROM customer;
-- Task
-- Write a query to find the highest and lowest 'Hourly_pay' of the employees from the table 'employee'.

-- Rename the column header for highest pay as 'max_pay'
-- Rename the column header for lowest pay as 'min_pay'
-- Expected output
-- ┌─────────┐
-- │ max_pay │
-- ├─────────┤
-- │ 55      │
-- └─────────┘
-- ┌─────────┐
-- │ min_pay │
-- ├─────────┤
-- │ 28      │
-- └─────────┘









/*Write 3 separate queries to output the entries for the following
- Count the number of employees in the department 'Sales'.
- Maximum Hourly pay for the department 'Operations'.
- Minimum Hourly pay for the department 'Operations'.

Output the counts on separate lines */


SELECT COUNT(*) AS count_sales
FROM employee
WHERE Department = 'Sales';

SELECT MAX(Hourly_pay) AS ops_max_pay
FROM employee
WHERE Department = 'Operations';

SELECT MIN(Hourly_pay) AS ops_min_pay
FROM employee
WHERE Department = 'Operations';




