-- Sample syntax
-- We can also use Variables in Expressions

-- Task
-- Update the code on the right based on the given sample

-- Declare variables named "num1" and "num2" of type NUMBER and assign them values.
-- Declare a variable named "result" of type NUMBER to store the result of an arithmetic expression.
-- Perform arithmetic operations (addition, subtraction, multiplication, division) using "num1" and "num2" and store the result in "result".

-- Update the code below to solve the problem
DECLARE
  num1 NUMBER := 10;
  num2 NUMBER := 5;
  result NUMBER;
BEGIN
  result := num1 + num2; -- Addition
  DBMS_OUTPUT.PUT_LINE('Addition Result: ' || result);
  
  result := num1 - num2 ; -- Update the code here for Subtraction
  DBMS_OUTPUT.PUT_LINE('Subtraction Result: ' || result);
  
  result := num1 * num2 ; -- Update the code here for Multiplication
  DBMS_OUTPUT.PUT_LINE('Multiplication Result: ' || result);
  
  result := num1 / num2 ; -- Update the code here for Division
  DBMS_OUTPUT.PUT_LINE('Division Result: ' || result);
END;
/