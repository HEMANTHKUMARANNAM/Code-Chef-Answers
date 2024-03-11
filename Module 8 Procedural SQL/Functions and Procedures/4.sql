-- Practice - Factorial of a number
-- Task
-- Update the calculate_factorial function given in the IDE to calculate the factorial of a given number.
-- In this case - 
-- �
-- n - has been initialized to 5.

-- Did you like the problem?










CREATE OR REPLACE FUNCTION calculate_factorial(n NUMBER) RETURN NUMBER IS
    result NUMBER := 1;
BEGIN
    -- Calculate factorial iteratively
    FOR I IN 1 .. n LOOP
        result := result*I;
    END LOOP;
    
    RETURN result;
    




END;
/

-- Example usage: Calculate factorial of 5
DECLARE
    n NUMBER := 5;
    factorial_result NUMBER;
BEGIN
    factorial_result := calculate_factorial(n);
    DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' is: ' || factorial_result);
END;
/
