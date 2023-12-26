-- In the previous problem we saw how to use GROUP BY statement.
-- SQL also gives you an option to filter out which groups should be added and which are to be removed.
-- For this purpose we use Having statement.
-- Let us try to find to out the average Age across Division which has more than 50 students.

-- Below is the query to find out the average Age across Division which has more than 50 students from the table student.

-- SELECT Division,
-- AVG(Age),
-- COUNT(*)
-- FROM student
-- GROUP BY Division
-- HAVING COUNT(*) > 50;
-- Task
-- Write a query to find out the average of column 'Payout' across 'Department' which has more than 3 employees from the table 'employee'.
-- The output table should have the name of the department and their respective average pay.
-- Rename the column header for the 2nd column as 'avg_payout'.
-- Code it out in the IDE.

-- Expected output
-- ┌────────────┬─────────────┐
-- │ Department │ avg_payout  │
-- ├────────────┼─────────────┤
-- │ Operations │ 11.227      │
-- │ Sales      │ 20.34625    │
-- └────────────┴─────────────┘






 /* Write a query to find out the average Payout across department which has more than 3 employees from the table employee.
The output table should have the name of the department and their respective average pay. */

SELECT DEPARTMENT,
AVG(Payout) AS avg_payout
FROM employee
GROUP BY DEPARTMENT
HAVING COUNT(*) > 3;