-- Sum of 2 numbers
-- Write PL/SQL block which will calculate some of two numbers and display the output.






-- Update the code below to solve the problem
DECLARE
  num1 NUMBER;
  num2 NUMBER;
  num3 NUMBER;

BEGIN
  num1 := 10;
  num2 := 20;
  num3 := num1 + num2;
  DBMS_OUTPUT.PUT_LINE(num3);
  
  
END;
/