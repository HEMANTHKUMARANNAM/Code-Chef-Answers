
-- Rearrange the query to output the names of the employees whose salary is more than 150000.

-- Your table 'employee' has the following fields:

-- emp_id INT PRIMARY KEY,
-- emp_name VARCHAR(255) NOT NULL,
-- emp_age INT,
-- emp_dept VARCHAR(255)
-- Your table 'salary' has the following fields:

-- emp_id INT
-- salary_amt INT



SELECT emp_name 
FROM employee
WHERE emp_id IN ( 
SELECT emp_id 
FROM salary
WHERE salary_amt >150000);