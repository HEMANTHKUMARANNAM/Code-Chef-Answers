-- Functions in PLSQL
-- Functions can take input parameters and return a single value.

-- Here is a sample function in PLSQL

-- CREATE OR REPLACE FUNCTION calculate_rectangle_area(length NUMBER, width NUMBER) RETURN NUMBER IS
--     area NUMBER;
-- BEGIN
--     area := length * width;
--     RETURN area;
-- END;
-- We create a function named calculate_rectangle_area.
-- The function takes two input parameters: length and width, both of type NUMBER.
-- Inside the function, we calculate the area of the rectangle by multiplying the length and width.
-- The result is stored in a variable named area.
-- Finally, we use the RETURN statement to return the calculated area.
-- Task
-- Run the code given in the IDE - check the output.
-- Also check how the function is called.





CREATE OR REPLACE FUNCTION calculate_rectangle_area(length NUMBER, width NUMBER) RETURN NUMBER IS
    area NUMBER;
BEGIN
    area := length * width;
    RETURN area;
END;
/

DECLARE
    length NUMBER := 5;
    width NUMBER := 10;
    rectangle_area NUMBER;
BEGIN
    rectangle_area := calculate_rectangle_area(length, width);
    DBMS_OUTPUT.PUT_LINE('Area of the rectangle: ' || rectangle_area);
END;
/

