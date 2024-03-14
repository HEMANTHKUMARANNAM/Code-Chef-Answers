-- Cursors
-- In PL/SQL, a cursor is a mechanism that allows you to fetch and process multiple rows returned by a SQL query one at a time. It's particularly useful when you want to perform operations on data retrieved from the database sequentially.

-- Purpose: When you execute a SQL query in PL/SQL, it can return multiple rows. Cursors provide a way to process these rows one by one.
-- Declaration:: It involves specifying the SQL query that retrieves the desired data and defining the cursor name.
-- DECLARE
--     CURSOR cursor_name IS
--         SELECT column1, column2
--         FROM table_name
--         WHERE conditions;
-- Opening: A cursor needs to be opened before fetching rows.
-- OPEN cursor_name;
-- Fetching: Use a loop to fetch rows until no more rows are available.
-- LOOP
--     FETCH cursor_name INTO variable1, variable2;
--     EXIT WHEN cursor_name%NOTFOUND; -- Exit loop if no more rows
--     -- Process fetched data
-- END LOOP;
-- Closing: It is important to close the cursor after fetching rows to release resources.
-- CLOSE cursor_name;
-- Task
-- Check the code given in the IDE.
-- This code fetches each employee's name and salary from the employees table using a cursor and prints them using DBMS_OUTPUT.PUT_LINE. It's a basic example of how cursors are used to iterate over query results in PL/SQL.








DECLARE
    -- Declare cursor to fetch emp_name and emp_salary from employees table
    CURSOR emp_cursor IS
        SELECT emp_name, emp_salary
        FROM employees;
    -- Declare variables to hold fetched values
    v_emp_name employees.emp_name%TYPE;
    v_emp_salary employees.emp_salary%TYPE;
BEGIN
    -- Open cursor to begin fetching rows
    OPEN emp_cursor;
    -- Loop through the cursor result set
    LOOP
        -- Fetch values from the current row into variables
        FETCH emp_cursor INTO v_emp_name, v_emp_salary;
        -- Exit loop if no more rows to fetch
        EXIT WHEN emp_cursor%NOTFOUND;
        -- Print employee name and salary
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp_name || ', Salary: ' || v_emp_salary);
    END LOOP;
    -- Close the cursor
    CLOSE emp_cursor;
END;
/





-- this is end