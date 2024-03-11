-- Procedures in PLSQL continued
-- Task
-- You need to update the Procedure to print the first 10 even numbers.

-- Expected output
-- 2
-- 4
-- 6
-- 8
-- 10
-- 12
-- 14
-- 16
-- 18
-- 20





CREATE OR REPLACE PROCEDURE print_first_10_even_numbers IS
BEGIN
    
    FOR I IN 1 .. 10 LOOP
        DBMS_OUTPUT.PUT_LINE(2*I);
    END LOOP;
END print_first_10_even_numbers;




/

DECLARE
BEGIN
    print_first_10_even_numbers; -- Calling the procedure
END;
/