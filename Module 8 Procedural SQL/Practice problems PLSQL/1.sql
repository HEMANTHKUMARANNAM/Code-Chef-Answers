
-- Practice - Update an entry
-- We have defined an employee number 102.
-- Salary increment value is set as 1000.

-- Task
-- Write a PL/SQL block which does accepts employee number and increment his salary by 1000.

-- We have provided the code template in the IDE - update the code to solve this problem!












select * from employees;

-- PL/SQL block to increment salary by 1000 for a given employee number
DECLARE
    v_emp_id NUMBER := 102; -- Input parameter: Employee ID
    v_increment NUMBER := 1000; -- Amount to increment salary
BEGIN
    -- Update the code below this line to update the salary of employeeid 102 by 1000
    UPDATE employees
    SET salary = 
   (select salary from
    employees WHERE e_id = v_emp_id) + v_increment
    WHERE e_id = v_emp_id;

    -- Output message
    DBMS_OUTPUT.PUT_LINE('Salary incremented by ' || v_increment || ' for Employee ID ' || v_emp_id);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID ' || v_emp_id || ' not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

select * from employees;