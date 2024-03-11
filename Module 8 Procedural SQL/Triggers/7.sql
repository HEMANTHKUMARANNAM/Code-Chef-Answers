-- Practice problem - Trigger to Null values
-- We have an employees table with columns emp_id, emp_name, department and salary.

-- Task
-- Write a trigger ensure_department_not_null to ensure that department column does not contain null values.

-- If the department value is NULL, then you should RAISE_APPLICATION_ERROR(-20001, 'Department cannot be NULL')
-- Update the code in the IDE.