-- Practice - Armstrong number
-- Task
-- You are given a number 153.

-- Write a code to check whether the given number is an Armstrong number We have provided the code template in the IDE - update the code to solve this problem!

-- Note: Update the value for v_number to 154 - and run the code to check the output.
-- You can also update the value for v_number to 1, 153, 370, 371, 407 and check the result.









DECLARE
    v_number NUMBER := 153; -- Input number to check
    v_temp_number NUMBER := v_number;
    v_sum NUMBER := 0;
    v_digit NUMBER;
    
    v_length NUMBER;

BEGIN
   -- Convert the number to a string and calculate its length
    v_length := LENGTH(TO_CHAR(v_number));
    
    -- Update the while loop below to solve the problem
    WHILE (v_temp_number != 0) LOOP
    
    v_digit := v_temp_number MOD 10;       
    v_temp_number := TRUNC( v_temp_number / 10 );
    v_sum := v_sum + POWER( v_digit , v_length );
    
    END LOOP;


    -- Check if the sum equals the original number
    IF v_sum = v_number THEN
        DBMS_OUTPUT.PUT_LINE(v_number || ' is an Armstrong number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_number || ' is not an Armstrong number.');
    END IF;
END;
/