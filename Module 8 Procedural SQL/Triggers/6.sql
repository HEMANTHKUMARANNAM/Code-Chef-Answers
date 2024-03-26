-- Practice problem - Trigger to prevent updates
-- We have an employees table with columns emp_id, emp_name and salary.

-- We have create a trigger prevent_update_admin_102, we're using a BEFORE UPDATE trigger that fires for each row being updated in the employees table.
-- It checks if the old emp_id (i.e., the employee id before the update) is 102, and if so, raises an application error with the specified message, preventing the update.

-- Task
-- Write an Update query which tries to update the emp_id 102 with the following values

-- Set emp_name = 'Hrishi'
-- Set salary = 65000



CREATE OR REPLACE TRIGGER prevent_update_admin_102
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF :OLD.emp_id = 102 THEN
        RAISE_APPLICATION_ERROR(-20001, 'You cannot edit details of Admin employee 102');
    END IF;
END;
/

-- Solution as follows
UPDATE employees
SET emp_name = 'Admin', salary = 65000
WHERE emp_id = 102;

Select * from employees;

