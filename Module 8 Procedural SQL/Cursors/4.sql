-- Explicit cursors - attributes
-- In PL/SQL, when working with explicit cursors, you can use various attributes to check the status of the cursor. These attributes provide information about the state of the cursor, such as whether it has fetched all rows, whether it's currently fetching a row, or if no rows are found. The commonly used attributes are:

-- %FOUND: Returns TRUE if the last fetch operation successfully returned a row.
-- It evaluates to FALSE if the cursor has not fetched any rows or if all rows have been fetched.
-- %NOTFOUND: Returns TRUE if the last fetch operation found no rows.
-- It evaluates to FALSE if the cursor has fetched at least one row.
-- %ROWCOUNT: Returns the number of rows fetched so far by the cursor.
-- Check out and run the code in the IDE.








DECLARE
    CURSOR emp_cursor IS
        SELECT emp_name, emp_salary
        FROM employees;
    v_emp_name employees.emp_name%TYPE;
    v_emp_salary employees.emp_salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_emp_name, v_emp_salary;
        -- Check if a row is fetched successfully
        IF emp_cursor%FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp_name || ', Salary: ' || v_emp_salary);
        ELSE
            -- Check if no rows are found
            IF emp_cursor%NOTFOUND THEN
                DBMS_OUTPUT.PUT_LINE('No more rows found.');
            END IF;
            EXIT; -- Exit the loop if no rows are found
        END IF;
    END LOOP;
    -- Display the total number of rows fetched
    DBMS_OUTPUT.PUT_LINE('Total rows fetched: ' || emp_cursor%ROWCOUNT);
    CLOSE emp_cursor;
END;

/