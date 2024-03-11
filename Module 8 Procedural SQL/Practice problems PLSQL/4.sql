-- Practice - Fibonacci sequence
-- Task
-- You need to generate the first 10 numbers of the Fibonacci sequence.

-- We have provided the code template in the IDE - update the code to solve this problem!

-- Expected Output
-- Fibonacci Sequence:
-- 0
-- 1
-- 1
-- 2
-- 3
-- 5
-- 8
-- 13
-- 21
-- 34











DECLARE
    v_first_number NUMBER := 0; -- First number of Fibonacci sequence
    v_second_number NUMBER := 1; -- Second number of Fibonacci sequence
    v_fibonacci_number NUMBER; -- Variable to store current Fibonacci number
    v_count NUMBER := 10; -- Number of Fibonacci numbers to generate
BEGIN
    -- Output the first two numbers of the Fibonacci sequence
    DBMS_OUTPUT.PUT_LINE('Fibonacci Sequence:');
    DBMS_OUTPUT.PUT_LINE(v_first_number);
    DBMS_OUTPUT.PUT_LINE(v_second_number);

    -- Generate and output the next Fibonacci numbers using a FOR LOOP
    
    FOR I IN 1 .. 8 LOOP
    v_fibonacci_number := v_first_number + v_second_number;
    DBMS_OUTPUT.PUT_LINE(v_fibonacci_number);
    v_first_number := v_second_number;
    v_second_number := v_fibonacci_number;
    
    END LOOP;
    






END;
/
