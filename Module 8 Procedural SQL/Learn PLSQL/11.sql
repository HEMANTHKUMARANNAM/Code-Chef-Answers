-- WHILE LOOP
-- In PL/SQL, you can use the WHILE loop to execute a block of code repeatedly as long as a specified condition is true. Sample syntax below

-- DECLARE
    
-- BEGIN
--     -- Start of the while loop
--     WHILE CONDITION LOOP
       
--     END LOOP; -- End of the while loop
-- END;
-- Task
-- Update the code in the IDE using WHILE LOOP conditions such that the expected output is

-- Iteration: 1
-- Iteration: 2
-- Iteration: 3
-- Iteration: 4
-- Iteration: 5





DECLARE
    v_counter NUMBER := 1; -- Initialize a counter variable
BEGIN
    -- Start of the while loop
    WHILE v_counter <6 LOOP
        -- Perform actions or execute statements inside the loop
        DBMS_OUTPUT.PUT_LINE('Iteration: ' || v_counter);

        
        -- Increment the counter
        v_counter := v_counter + 1;
    END LOOP; -- End of the while loop
END;

/