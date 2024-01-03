-- HR team now wants the details of ONLY the full time employees.

-- Task
-- Re arrange code to fetch the details of the full time employees from the table 'employee'.

SELECT * FROM employee
EXCEPT
SELECT * FROM pt_employee