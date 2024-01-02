-- WITH is used to create temporary tables when we need to define a named subquery that can be referenced later in the SQL statement.

-- The same task could have been done by a WHERE clause inside a JOIN statement - however, using a WITH allows us to reduce the complexity of the query
-- Let us consider the data base of an organisation, where we have a table 'employee' and a table 'department'.
-- Lets find out the department of the top 3 highly paid employees.
-- Note that the department details are not mentioned in the table 'employee'.

-- Below is query to find out the department of the top 3 highly paid employees

--  WITH top_employee AS(     -- This table has only 2 columns - 'name' and 'emp_id'
--  SELECT name,emp_id
--  FROM employee
--  ORDER BY salary DESC
--  LIMIT 3                   -- This table has only 3 rows - highest paid employees
--  )
--  SELECT top_employee.name,department.dept_name
--  FROM top_employee
--  JOIN department
--  ON top_employee.emp_id=department.emp_id;
-- Task
-- Rearrange the query to find the name and department of the students 
--who has scored a total marks more than 80. Table student has the following columns: st_id, st_name, marks,dept_id. Table department has the following columns:dept_id, dept_name










-- ANSWER

WITH topper AS(  
    SELECT st_name,dept_id
    FROM student
    WHERE  marks> 80
    )
    SELECT topper.st_name,department.dept_name
    FROM topper
    JOIN department
    ON topper.dept_id=department.dept_id;