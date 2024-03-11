-- Practice - Multiple table udpate
-- We have an employees table with columns emp_id, emp_name, department and salary.

-- We also have a department_salary table with columns department and avg_salary.

-- Task
-- Write a PLSQL query for a trigger to update the 'department_salary' table with average salary for each department whenever insert or update queries are run on employee table.

-- Update the trigger update_department_salary given in the IDE to get the following output.

-- Expected output
-- DEPARTMENT		AVG_SALARY
-- ---------------------------
-- HR				56667
-- Operations		56000