-- We've learned the concept of SUM, that its used to find the sum of the cells of a particular column.
-- Adding CASE to the sum, helps us to filter out the cells which are to be considered while calculating the sum of a column

-- Below is a query to find the sum of salaries of the employee across department who has an experience more than 3 years , from table 'employee':

--        SELECT Department,
--        SUM(CASE WHEN Exp >3 THEN Salary ELSE 0 END) as Sum_High_Salary 
--        FROM employee
--        GROUP BY 1;
-- In the above query,

-- The CASE statement is used to check if the Exp column value is greater than 3
-- If the condition is true, the Salary of the employee is added to the sum; otherwise, 0 is added.
-- The SUM function then calculates the sum of all the salaries that meet the condition.
-- The resulting sum is given an alias of Sum_High_Salary.
-- Task
-- Write a query to find the sum of fee paid by the students, aged above 20 across departments.
-- Alias the sum column as 'Sum_Senior_Fee'.
-- You need to output the columns - 'Department' and 'Sum_Senior_Fee'.

-- Expected output
-- ┌────────────┬────────────────┐
-- │ Department │ Sum_Senior_Fee │
-- ├────────────┼────────────────┤
-- │ English    │ 5700           │
-- │ History    │ 1800           │
-- │ Math       │ 3700           │
-- │ Science    │ 4700           │
-- └────────────┴────────────────┘
-- Your table 'student' has the following columns:

-- St_id
-- St_name
-- Fee
-- Department
-- Age




/* Write a query to find the sum of fee paid by the students, aged above 20 across departments.
Alias the sum column as 'Sum_Senior_Fee'.*/


SELECT Department,
  SUM(CASE WHEN age >20 THEN fee ELSE 0 END) as Sum_Senior_Fee 
  FROM student
  GROUP BY Department;
