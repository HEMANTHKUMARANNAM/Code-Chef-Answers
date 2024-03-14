-- If-then-else
-- In PL/SQL, the IF-THEN-ELSE statement is used for conditional branching, allowing you to execute certain blocks of code based on a condition.

-- The basic syntax of the IF-THEN-ELSE statement in PL/SQL is as follows:

-- IF condition THEN
--     -- Statements to execute if condition is TRUE
-- ELSE
--     -- Statements to execute if condition is FALSE
-- END IF;
-- Check the code implementation in the IDE.







-- Click on 'Submit' to continue
DECLARE
    v_number NUMBER := 20; 
BEGIN
    IF MOD(v_number, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is even.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is odd.');
    END IF;
END;
/

DECLARE
    v_number NUMBER := 25; 
BEGIN
    IF MOD(v_number, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is even.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is odd.');
    END IF;
END;

/






-- this is end