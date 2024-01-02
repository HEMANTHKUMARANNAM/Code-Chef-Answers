-- Correlated Subqueries as the name suggests, its inner and outer queries are related.
-- The subquery is dependent on the outer query.

-- Let us understand this via an example

-- Suppose we have a table consisting the following information - 'Employee_id', 'Department' and 'Salary' - employees can belong to various departments - Marketing / Sales / HR / Ops
-- Suppose we want to find the employee id of those employees whose salary is less than the average salary of the employees ONLY in his department.
-- This is how the query will work
-- For each employee_id in the outer query, the subquery will run.
-- The subquery will check the department of the employee and then compute the average salary of his department
-- The outer query will then take this average salary - and compare if the employee's salary is less than this average
-- If yes - then the outer query will include this employee in the output. This process will run for each row in the table
-- Query:

--     SELECT employee_id
--     FROM employee AS e
--     WHERE salary < 
--         (SELECT AVG(salary)
--         FROM employee
--         WHERE department= e.department);
-- Task
-- Write a query to retrieve the names of food items which cost less than the average cost of 'Continental' food type(f_type).

-- Expected output
-- ┌────────┐
-- │ f_name │
-- ├────────┤
-- │ Pizza  │
-- │ Burger │
-- │ Tacos  │
-- └────────┘
-- Table 'food' has the following columns:

-- f_id (int)
-- f_name (text)
-- f_cost (int)
-- f_type (text).




/* Write a query to retrieve the names of food items which cost less than the average cost of 'Continental' food type(f_type). */


select f_name
from food
where 
f_cost <= (select AVG(f_cost) from food
            where f_type = 'Continental');

