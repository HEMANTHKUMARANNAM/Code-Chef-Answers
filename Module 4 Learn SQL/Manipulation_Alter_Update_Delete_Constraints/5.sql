-- The DELETE FROM statement is used to remove one or multiple rows from a table.
-- You can use the statement when you want to delete existing records.

-- Below is the query to delete all rows in the student table with student_id - 08 (table added below for reference).

-- DELETE FROM  student
-- WHERE student_id = 08;
-- Task
-- Write a query which does the following

-- Delete all rows in the employee table whose Department is 'Hr'.
-- Output all the entires of the table
-- Original table has the following rows
-- ┌─────────────┬────────────────┬────────────┐
-- │ Employee_id │ Employee_Name  │ Department │
-- ├─────────────┼────────────────┼────────────┤
-- │ 1           │ Kayla Thompson │ Sales      │
-- │ 2           │ Ethan Chen     │ Operations │
-- │ 3           │ Julia Lee      │ Hr         │
-- │ 4           │ Marcus Garcia  │ Product    │
-- └─────────────┴────────────────┴────────────┘









-- ANSWER


/* Write a query which does the following
- Delete all rows in the employee table whose Department is 'Hr'.
- Output all the entires of the table. */

DELETE FROM employee
WHERE Department = 'Hr';

SELECT * FROM employee