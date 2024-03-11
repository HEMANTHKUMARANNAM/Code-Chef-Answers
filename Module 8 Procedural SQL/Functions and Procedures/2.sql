-- Practice - Arithmetic operations
-- Task
-- We have given the driver code for addition and multiplication.

-- Update the add_numbers and multiply_numbers functions to solve the problem.










CREATE OR REPLACE FUNCTION add_numbers(num1 NUMBER, num2 NUMBER) RETURN NUMBER IS sum_numbers NUMBER;

BEGIN
    sum_numbers := num1 + num2;
    RETURN sum_numbers;


END;
/

CREATE OR REPLACE FUNCTION multiply_numbers(num1 NUMBER, num2 NUMBER) RETURN NUMBER IS product_numbers NUMBER;

BEGIN
    product_numbers := num1 * num2;
    RETURN product_numbers;



END;
/

DECLARE
    number1 NUMBER := 5;
    number2 NUMBER := 10;
    sum_numbers NUMBER;
    product_numbers NUMBER;
    
BEGIN
    sum_numbers := add_numbers(number1, number2);
    DBMS_OUTPUT.PUT_LINE('Sum of 2 numbers: ' || sum_numbers);
    product_numbers := multiply_numbers(number1, number2);
    DBMS_OUTPUT.PUT_LINE('Product of 2 numbers: ' || product_numbers);

END;
/

