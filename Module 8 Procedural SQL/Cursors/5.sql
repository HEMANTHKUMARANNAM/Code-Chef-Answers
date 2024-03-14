-- Practice - Top 5 entries
-- We have a table 'employees' containing the details of multiple employees.

-- Task
-- Write a PL/SQL program to display top 5 employee details based on salary using Cursors.
-- The template code is populated in the IDE - update the 'Cursor' declaration.

-- Expected output
-- Employee Name: Emily Brown, Salary: 62000
-- Employee Name: Chris Evans, Salary: 61000
-- Employee Name: Jane Smith, Salary: 60000
-- Employee Name: Emma Harris, Salary: 59000
-- Employee Name: David Lee, Salary: 58000







DECLARE
    CURSOR top_emp_cursor IS
     
    select emp_name , emp_salary from employees
    order by emp_salary DESC
    FETCH FIRST 5 ROWS ONLY;          -- limit 5;        
    




    v_emp_name employees.emp_name%TYPE;
    v_emp_salary employees.emp_salary%TYPE;
BEGIN
    OPEN top_emp_cursor;
    LOOP
        FETCH top_emp_cursor INTO v_emp_name, v_emp_salary;
        EXIT WHEN top_emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_emp_name || ', Salary: ' || v_emp_salary);
    END LOOP;
    CLOSE top_emp_cursor;
END;
/







-- this is end

