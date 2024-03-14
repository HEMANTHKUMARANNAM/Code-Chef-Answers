-- ractice - Employee commissions
-- We have a table containing the following information

-- emp_id
-- emp_name
-- department
-- Salary
-- Commission
-- Task
-- Write a pl/sql program to update the commission values for all employees with salary less than 2000 by adding Rs.1000 to the commission.

-- Expected output
-- Cursors








select * from employee_details;

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, salary, commission
        FROM employee_details
        WHERE salary < 2000;
BEGIN
    FOR emp_rec IN emp_cursor LOOP
    
     UPDATE employee_details
        SET commission = emp_rec.commission + 1000
        WHERE emp_id = emp_rec.emp_id;
    

    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Commission updated successfully for employees with salary less than 2000.');
END;
/

select * from employee_details;








-- this is end