-- We know that 'XYZ Pvt.Ltd.' has part time employees. The full time and part time employees are given employee id in different format. The Hr teams wants to know the employee id and name of the Part time employees who are added to the master table 'employee'

-- Task
-- Write a query to output employee id and name of the part time employees from the table 'employee'.
-- Hint: Table 'employee' has the details of all employees (including part time employees). However, table 'pt_employee' has the details of all active and non active part time employees.

-- Expected output
-- ┌────────┬──────────────┐
-- │ emp_id │   emp_name   │
-- ├────────┼──────────────┤
-- │ PT56   │ Tom Wilson   │
-- │ PT57   │ Emily Parker │
-- │ PT58   │ Mike Adams   │
-- │ PT59   │ Megan Kim    │
-- └────────┴──────────────┘



/* Write a query to output a table with all the details of the part time employees from the table 'employee'. */


select emp_id,emp_name
from employee
intersect
select emp_id,emp_name
from pt_employee;