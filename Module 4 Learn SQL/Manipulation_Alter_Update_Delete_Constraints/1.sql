-- The ALTER statement is used to append a new column to an existing table.
-- Below is the query to add a new column 'Department' and set a default value, to the existing table student.

-- UPDATE student
-- SET Age = 6
-- WHERE student_id = 23;
-- While altering the table we can either keep the newly added column blank or we could set a default value (as mentioned above) to it. Lets run the query by adding a default value to the newly added column.

-- Task
-- Write a query to do the following

-- Add a column 'Designation' to the table 'employee' and set 'Null' as the default value.
-- Output the entire table.
-- Original table has the following rows
-- ┌─────────────┬────────────────┬────────────┐
-- │ Employee_id │ Employee_Name  │ Department │
-- ├─────────────┼────────────────┼────────────┤
-- │ 1           │ Kayla Thompson │ Sales      │
-- │ 2           │ Ethan Chen     │ Operations │
-- │ 3           │ Julia Lee      │ Hr         │
-- └─────────────┴────────────────┴────────────┘


/* Write a query to add a column 'Designation' to the table and set 'Null' as the default value. Output the entire table.*/


-- ALTER TABLE employee
-- ADD COLUMN Designation TEXT default NULL;

-- SELECT * FROM employee 