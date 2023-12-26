-- The GROUP BY statement in SQL is used to combine rows with identical values into summary rows.

-- This statement is frequently paired with aggregate functions such as COUNT(), MAX(), MIN(), SUM(), and AVG() to group the output based on one or more columns.
-- We saw in the previous problems that clauses like COUNT, MIN, MAX, SUM, AVG are aggregate functions which take a table and output a single row.
-- GROUP BY will be used to find the average Payout of each Department.
-- For example, we've used the AVG() function to find the average payout of the entire table employee.
-- Now, what if we want to know the Average payout of each department?
-- In such cases we use Group BY statement.
-- Below is the query to find the average Age of the students across Divisions in the table student.

-- SELECT Divisions,AVG(Age)
-- FROM student
-- GROUP BY Divisions;
-- Task
-- Write a query to find the Average of the column 'Payout' across 'Department' from the table 'employee'.
-- The output table should have the average payout of each department.
-- Rename the column header as 'avg_payout' Code it out in the IDE.

-- Expected Output:
-- ┌────────────┬─────────────┐
-- │ Department │ avg_payout  │
-- ├────────────┼─────────────┤
-- │ Hr         │ 21.957      │
-- │ Operations │ 12.41975    │
-- │ Product    │ 10.264      │
-- │ Sales      │ 20.609      │
-- └────────────┴─────────────┘



/* Write a query to find the Average of the column 'Payout' across 'Department' from the table 'employee'. The output table should have the average payout of each department.*/

SELECT Department,AVG(Payout) AS avg_payout
FROM employee
GROUP BY Department;