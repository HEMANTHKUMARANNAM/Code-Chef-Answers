-- Procedures in PLSQL
-- A procedure in PL/SQL is a named PL/SQL block that performs a specific task or a set of tasks. It can have input parameters, output parameters, or both.

-- Sample syntax below

-- CREATE OR REPLACE PROCEDURE procedure_name (parameter1 datatype, parameter2 datatype, ...) IS
-- BEGIN
--     -- Procedure body
--     -- Perform tasks here
-- END procedure_name;








CREATE OR REPLACE PROCEDURE print_hello IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello, World!');
END print_hello;
/

DECLARE
BEGIN
    print_hello; -- Calling the procedure
END;
/