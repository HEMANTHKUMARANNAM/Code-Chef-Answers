-- FOR LOOP with range
-- In PL/SQL, you can use the FOR loop to iterate over a range of values. Sample syntax

-- DECLARE
--     -- Declare loop index variable
--     v_counter NUMBER;
-- BEGIN
--     -- Start of the FOR loop
--     FOR v_counter IN start_value..end_value LOOP
--         -- Perform actions or execute statements inside the loop
--         DBMS_OUTPUT.PUT_LINE('Current Counter Value: ' || v_counter);
--     END LOOP; -- End of the FOR loop
-- END;
-- Task
-- Update the code given in the IDE such that we get the following expected output

-- Current Counter Value: 1
-- Current Counter Value: 2
-- Current Counter Value: 3
-- Current Counter Value: 4
-- Current Counter Value: 5

DECLARE
    v_counter NUMBER := 1;
BEGIN
    -- Update the syntas
    LOOP
        DBMS_OUTPUT.PUT_LINE('Current Counter Value: ' || v_counter);
        
        IF v_counter = 5 THEN
        EXIT;
        END IF;
        
        
        v_counter := v_counter + 1;
        
    END LOOP;
END;

/