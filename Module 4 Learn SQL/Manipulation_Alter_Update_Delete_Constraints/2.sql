-- The UPDATE statement is used to edit a row or multiple rows in a table.
-- Below is the query to Set the Age as 6, for the student with student_id - 23 to the existing table student.

-- UPDATE student
-- SET Age = 6
-- WHERE student_id = 23;
-- The 'WHERE' condition can be applied for any column. We will learn more about 'WHERE' in the next module

-- Task
-- Write a query to do the following

-- Set the Department as 'HR', for the employee with employee_id - 02 to the existing table employee
-- Output all the entries of the table
-- Original table has the following entries
-- ┌─────────────┬────────────────┬────────────┐
-- │ Employee_id │ Employee_Name  │ Department │
-- ├─────────────┼────────────────┼────────────┤
-- │ 1           │ Kayla Thompson │ Sales      │
-- │ 2           │ Ethan Chen     │ Operations │
-- │ 3           │ Julia Lee      │ Hr         │
-- └─────────────┴────────────────┴────────────┘
-- Code it out in the IDE.


/*Write a query to set the Department as 'HR', for the employee with employee_id 2 to the existing table employee. */


-- UPDATE employee
-- SET Department = 'Hr'
-- WHERE employee_id = 2;

-- SELECT * FROM employee

