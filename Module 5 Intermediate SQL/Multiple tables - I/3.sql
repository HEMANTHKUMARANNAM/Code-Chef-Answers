-- In the previous problem our task was to find name of David Lee's Mathematics professor.

-- We were able to do that manually because the number of tables and data in them were few.
-- Combining tables manually takes a lot of effort and is not practical.
-- In SQL, we use the concept of JOIN to achieve this.
-- Below is the query to join two tables 'employee' and 'department' in an organisation database.

--     SELECT *
--     FROM employee
--     JOIN department
--     ON employee.employee_id = department.employee_id;
-- The above query does the following

-- Joins two tables and outputs a single table.
-- The column 'employee_id' is used to match rows of the tables. i.e. Rows of the tables 'employee' are matched with the rows of the table 'department' which has the same employee_id by applying the condition employee.employee_id = department.employee_id.
-- Many a times multiple tables will have similar column names, thus to identify a particular column of a table we use the syntax table_name.column_name.
-- Below mentioned are the tables 'employee' and 'department'

-- Table employee:

-- employee_id	employee_Name	Desination
-- 1001	John Smith	Sales Manager
-- 1002	Emily Brown	Operations Executive
-- 1003	David Lee	HR Executive
-- Table department:

-- employee_id	department_id	department_Name
-- 1001	SL01	Sales
-- 1002	OP01	Operations
-- 1003	HR01	Humar Resouce
-- The output of the above query is mentioned below:

-- employee_id	employee_Name	Desination	employee_id	department_id	department_Name
-- 1001	John Smith	Sales Manager	1001	SL01	Sales
-- 1002	Emily Brown	Operations Executive	1002	OP01	Operations
-- 1003	David Lee	HR Executive	1003	HR01	Humar Resouce





SELECT *
FROM employee
JOIN department
ON employee.employee_id = department.employee_id;