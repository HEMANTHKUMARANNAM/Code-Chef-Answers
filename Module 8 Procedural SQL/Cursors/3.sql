-- Explicit cursors
-- Explicit cursors are declared explicitly by the programmer using the CURSOR keyword.
-- They provide more control and flexibility over result set processing compared to implicit cursors.
-- Explicit cursors are used for queries that return multiple rows, allowing the programmer to fetch and process rows individually.
-- Check out the sample code in the IDE / learn from the syntax.




DECLARE
    CURSOR emp_cursor IS
        SELECT emp_name, emp_salary FROM employees;
    v_emp_name employees.emp_name%TYPE;
    v_emp_salary employees.emp_salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_emp_name, v_emp_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp_name || ', Salary: ' || v_emp_salary);
    END LOOP;
    CLOSE emp_cursor;
END;

/





-- this is end