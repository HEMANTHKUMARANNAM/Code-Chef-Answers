-- Simple LOOP
-- In PL/SQL, you can use various loop constructs to iterate over a set of statements or execute a block of code repeatedly. One of the simplest loop constructs is the basic loop, also known as the "LOOP" loop.

-- Check and update the code given in the IDE. It is trying to do the following:

-- We declare a counter variable v_counter and initialize it to 1.
-- We use the LOOP keyword to start the loop.
-- Inside the loop, we perform some actions, such as printing the current iteration number using DBMS_OUTPUT.PUT_LINE.
-- We increment the counter
-- We specify an exit condition using the EXIT statement. The loop will terminate when the value of v_counter exceeds 5.
-- Once the exit condition is met, the loop ends, and the program continues with the code after the loop.
-- The expected output is

-- Iteration: 1
-- Iteration: 2
-- Iteration: 3
-- Iteration: 4
-- Iteration: 5








DECLARE
    v_counter NUMBER := 1; -- Initialize a counter variable
BEGIN
    -- Start of the loop
    LOOP
        -- Perform actions or execute statements inside the loop
        DBMS_OUTPUT.PUT_LINE('Iteration: ' || v_counter);
        
        -- Update this line to increment the counter
        
        
        
        
        -- Update this line to exit the loop when the counter reaches a value 5
         IF v_counter = 5 THEN
            EXIT;
        END IF;
        
        v_counter := v_counter + 1;
        
        
        
        
    END LOOP; -- End of the loop
    
END;

/





-- this is end
