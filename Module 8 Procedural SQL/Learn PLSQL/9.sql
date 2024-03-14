-- SEARCHED CASE
-- In a standard CASE expression, each WHEN clause compares the value of an expression to a specific value. This is useful when you need to compare a single 'expression' to multiple values.

-- CASE expression
--     WHEN value1 THEN result1
--     WHEN value2 THEN result2
--     ELSE default_result
-- END
-- In a SEARCHED CASE expression, each WHEN clause contains a search condition or a set of conditions that are evaluated independently. This allows for more complex conditions to be evaluated.

-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     ELSE default_result
-- END
-- Check out the example in the IDE - click on 'Submit' to proceed.





DECLARE
    v_score NUMBER := 85; -- Sample exam score
    v_grade VARCHAR2(2); -- Variable to hold the grade
BEGIN
    v_grade :=
        CASE
            WHEN v_score >= 90 THEN 'A'
            WHEN v_score >= 80 THEN 'B'
            WHEN v_score >= 70 THEN 'C'
            WHEN v_score >= 60 THEN 'D'
            ELSE 'F'
        END;
    
    DBMS_OUTPUT.PUT_LINE('Grade: ' || v_grade);
END;

/




-- this is end