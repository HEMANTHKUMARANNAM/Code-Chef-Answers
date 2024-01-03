-- Write a query to do the following

-- Output the name of employees from the table 'Employee' who meet the following condition
-- Employee age is less than the average age of the employees of the department 'Sales'.
-- Expected output
-- ┌──────────────┐
-- │   emp_name   │
-- ├──────────────┤
-- │ John Doe     │
-- │ Tom Brown    │
-- │ Emily Chen   │
-- │ Peter Nguyen │
-- │ Alex Lee     │
-- └──────────────┘
-- Your table 'Employee' has the following fields:



-- emp_id INT PRIMARY KEY,
-- emp_name VARCHAR(255) NOT NULL,
-- emp_age INT,
-- emp_dept VARCHAR(255)



/* Write a query to output the name of employees who has age less than the average age of the employees of the department 'Sales'. */

SELECT emp_name
from employee
where emp_age < (SELECT AVG(emp_age)
                from employee
                where emp_dept  = 'Sales');