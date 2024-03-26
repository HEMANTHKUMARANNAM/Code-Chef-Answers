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







CREATE OR REPLACE TRIGGER update_department_salary
AFTER INSERT OR UPDATE ON employees
DECLARE
    v_department VARCHAR2(50);
    v_avg_salary INT;
BEGIN
    -- Delete existing records from department_salary table
    DELETE FROM department_salary;

    -- Insert new records into department_salary table
    FOR r IN (SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department) LOOP
        INSERT INTO department_salary (department, avg_salary) VALUES (r.department, r.avg_salary);
    END LOOP;
END;
/


UPDATE employees
SET salary = 60000
WHERE emp_id = 103;

UPDATE employees
SET salary = 60000
WHERE emp_id = 105;

Select * from department_salary;