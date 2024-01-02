-- Imagine you are hired as a Database analyst of ABC e-commerce website.
-- Your task is to assist the HR / admin staff with the required data.
-- Lets have a look at the employee's table.

-- Task
-- Write a query to output the table 'employee' limited to 5 rows.

-- Expected output
-- ┌────────┬───────────────┬─────────┬─────────────────┐
-- │ emp_id │   emp_name    │ emp_age │    emp_dept     │
-- ├────────┼───────────────┼─────────┼─────────────────┤
-- │ 1      │ John Doe      │ 28      │ Sales           │
-- │ 2      │ Jane Smith    │ 35      │ Marketing       │
-- │ 3      │ Bob Johnson   │ 42      │ Engineering     │
-- │ 4      │ Mary Williams │ 31      │ Human Resources │
-- │ 5      │ Tom Brown     │ 26      │ IT              │
-- └────────┴───────────────┴─────────┴─────────────────┘




/* Write a query to output the table 'employee' limited to 5 rows. */


select *
from employee
limit 5;

