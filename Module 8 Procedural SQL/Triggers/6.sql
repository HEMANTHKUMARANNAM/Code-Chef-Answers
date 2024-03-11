-- Practice problem - Trigger to prevent updates
-- We have an employees table with columns emp_id, emp_name and salary.

-- We have create a trigger prevent_update_admin_102, we're using a BEFORE UPDATE trigger that fires for each row being updated in the employees table.
-- It checks if the old emp_id (i.e., the employee id before the update) is 102, and if so, raises an application error with the specified message, preventing the update.

-- Task
-- Write an Update query which tries to update the emp_id 102 with the following values

-- Set emp_name = 'Hrishi'
-- Set salary = 65000