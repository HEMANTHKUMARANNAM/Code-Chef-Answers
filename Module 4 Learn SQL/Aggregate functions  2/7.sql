-- The Query written in the console is trying to do the following

-- Find the average age of the employees
-- The department of the employees (using the group by function)
-- specifically for departments which have more than three employees.
-- Debug this query to get the correct output.

-- Your database is named 'employee' and has the following columns

-- Id (INT)
-- Name (VARCHAR),
-- Age (INT),
-- Department (VARCHAR)
-- Expected output
-- ┌────────────┬─────────┐
-- │ Department │ avg_age │
-- ├────────────┼─────────┤
-- │ Operations │ 23.0    │
-- │ Sales      │ 20.5    │
-- └────────────┴─────────┘






/* Debug the below query */

SELECT Department,Avg(Age) as 'avg_age'
FROM employee
GROUP BY Department
HAVING Count(Department) > 3;

