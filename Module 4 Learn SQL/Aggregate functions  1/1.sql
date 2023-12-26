-- Before we begin aggregate functions, a useful concept to know is renaming of columns during output.

-- In SQL, the keyword 'AS' allows you to rename a column or table using an alias.
-- Sample syntax:

-- SELECT employee_id AS 'Serial'
-- FROM employee;
-- Task
-- Write a query to output all from the following columns in the table 'employee'

-- Rename employee_id as 'Serial'
-- Rename employee_name as 'Name'
-- Rename department as 'Dept'
-- Expected output
-- ┌────────┬────────────────┬────────────┐
-- │ Serial │      Name      │    Dept    │
-- ├────────┼────────────────┼────────────┤
-- │ 1      │ Kayla Thompson │ Sales      │
-- │ 2      │ Ethan Chen     │ Operations │
-- │ 3      │ Julia Lee      │ Hr         │
-- │ 4      │ Marcus Garcia  │ Product    │
-- │ 5      │ Samantha Park  │ Operations │
-- └────────┴────────────────┴────────────┘









-- ANSWER

/* Write a query to output all from the following columns in the table 'employee'
- Rename employee_id as 'Serial'
- Rename employee_name as 'Name'
- Rename department as 'Dept' */


SELECT
employee_id AS 'Serial',
employee_name AS 'Name',
department AS 'Dept'
FROM employee;
