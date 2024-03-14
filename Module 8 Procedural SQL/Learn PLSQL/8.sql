-- CASE with ELSE
-- In PL/SQL, the CASE statement provides a way to execute conditional logic based on the value of an expression.

-- When using CASE with no ELSE clause, the control flow will execute the statements associated with the first matching WHEN clause and then exit the CASE statement.
-- If none of the WHEN conditions match, no action is taken.
-- Sample syntax below

-- CASE expression
--     WHEN value1 THEN
--         -- Statements to execute if expression equals value1
--     WHEN value2 THEN
--         -- Statements to execute if expression equals value2
--     ...
--     WHEN valueN THEN
--         -- Statements to execute if expression equals valueN
-- END CASE;
-- Without an ELSE clause, if none of the WHEN conditions match the expression, no action is taken. The control flow simply exits the CASE statement.

-- Check the code in the IDE - click on 'Submit' to continue.








DECLARE
    v_day VARCHAR2(10) := 'Sunday';
BEGIN
    CASE v_day
        WHEN 'Monday' THEN
            DBMS_OUTPUT.PUT_LINE('Today is Monday.');
        WHEN 'Tuesday' THEN
            DBMS_OUTPUT.PUT_LINE('Today is Tuesday.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Today is neither Monday nor Tuesday.');
    END CASE;
END;
/




-- this is end