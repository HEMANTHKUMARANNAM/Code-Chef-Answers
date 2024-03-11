-- Implicit cursors
-- Implicit cursors are automatically created by PL/SQL for SQL statements that are not explicitly assigned to a cursor variable.
-- They are typically used for single-row queries or DML (Data Manipulation Language) statements like INSERT, UPDATE, DELETE, or SELECT INTO.
-- Implicit cursors are limited in functionality compared to explicit cursors, but they are simpler to use for straightforward queries.

-- Check-out the syntax for implicit cursors.
-- Run the code in the IDE to check the output.








DECLARE     -- Notice that cursor declaration has not been done here

    v_emp_name employees.emp_name%TYPE;
    v_emp_salary employees.emp_salary%TYPE;
BEGIN


    SELECT emp_name, emp_salary INTO v_emp_name, v_emp_salary FROM employees WHERE emp_id = 1;
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp_name || ', Salary: ' || v_emp_salary);
    
END;

/