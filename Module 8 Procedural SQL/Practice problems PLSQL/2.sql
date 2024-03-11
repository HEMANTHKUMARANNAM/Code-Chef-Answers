-- Practice - Update an entry
-- We have defined an employee number 102.

-- Task
-- You need to delete the row corresponding to this employee number from the table.

-- We have provided the code template in the IDE - update the code to solve this problem!










select * from employees;

-- PL/SQL block to increment salary by 1000 for a given employee number
DECLARE
    v_emp_id NUMBER := 102; -- Input parameter: Employee ID

BEGIN
    -- Update the code below this line to delete v_emp_id from employees table
    -- note: e_id is the column key in the 'employees' table
    DELETE FROM EMPLOYEES WHERE e_id = v_emp_id;
    
    

END;
/

select * from employees;