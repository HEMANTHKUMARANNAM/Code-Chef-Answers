-- Positional and notational parameters
-- In PL/SQL, parameters can be passed to procedures and functions in two main ways: positional parameters and notational parameters.

-- Positional Parameters:
-- Positional parameters are passed to a procedure or function based on their position in the parameter list.
-- The caller must provide values for all parameters in the order they are declared in the procedure or function signature.
-- Positional parameters are identified by their position, and their values are matched to parameters in the same order they are defined in the procedure or function.
-- Example of calling a procedure with positional parameters:
-- Check out the code in the IDE as an example.
-- Run the code to check the output.





CREATE OR REPLACE PROCEDURE print_full_name(first_name VARCHAR2, last_name VARCHAR2) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Full Name: ' || first_name || ' ' || last_name);
END;
/

BEGIN
    print_full_name('John', 'Doe');
END;
/



-- this is end
