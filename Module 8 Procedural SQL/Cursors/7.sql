-- Parameterized cursor
-- A parameterized cursor in PL/SQL is a type of explicit cursor that allows you to pass parameters to the SQL query dynamically.
-- This means you can create a cursor with a query template that includes placeholders for parameters, and then supply values for those parameters when you open the cursor.
-- This allows for more flexible and reusable cursor definitions.

-- Check the sample code in the IDE - run the code the check the output.

-- In this example:

-- We declare a cursor named emp_cursor with a parameter dept_id_param.
-- The SQL query inside the cursor uses the parameter dept_id_param to filter employees based on their department ID.
-- When opening the cursor emp_cursor, we pass a specific department ID (101 in this case) as an argument.
-- This department ID is then substituted into the SQL query, and the cursor fetches employees only from that department.
-- This allows the cursor to be reused with different department IDs, making the cursor more versatile and adaptable to different scenarios.