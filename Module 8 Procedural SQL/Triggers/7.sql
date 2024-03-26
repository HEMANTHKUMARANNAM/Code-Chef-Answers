-- Practice problem - Trigger to Null values
-- We have an employees table with columns emp_id, emp_name, department and salary.

-- Task
-- Write a trigger ensure_department_not_null to ensure that department column does not contain null values.

-- If the department value is NULL, then you should RAISE_APPLICATION_ERROR(-20001, 'Department cannot be NULL')
-- Update the code in the IDE.


CREATE OR REPLACE TRIGGER ensure_department_not_null
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
BEGIN
    IF :NEW.department IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'Department cannot be NULL');
    END IF;
END;
/

Select * from employees;

INSERT INTO employees (emp_id, emp_name, department, salary) VALUES (106, 'David', NULL , 53000);
