-- In the previous problem we've added a new column 'Hourly_Pay'(mentioned below).
-- Now write a query which does the following

-- Set the 'Hourly_Pay' to 150 for the employees in Hr department.
-- Output all the entries of table.
-- Original table 'employee' has the following rows
-- ┌─────────────┬────────────────┬────────────┬────────────┐
-- │ Employee_id │ Employee_Name  │ Department │ Hourly_Pay │
-- ├─────────────┼────────────────┼────────────┼────────────┤
-- │ 1           │ Kayla Thompson │ Sales      │ 100        │
-- │ 2           │ Ethan Chen     │ Hr         │ 100        │
-- │ 3           │ Julia Lee      │ Operations │ 100        │
-- │ 4           │ Marcus Garcia  │ Hr         │ 100        │
-- └─────────────┴────────────────┴────────────┴────────────┘









-- ANSWER


/* Write a query to do the following
- Set hourly_pay to 150 for HR employees
- Output the entire table
*/

UPDATE employee
SET Hourly_Pay = 150
WHERE Department = 'Hr';

SELECT * FROM employee