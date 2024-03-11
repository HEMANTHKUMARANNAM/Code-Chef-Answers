-- Practice - Reverse a string
-- You are given a string 'Hello, World!'

-- Task
-- You need to reverse the string using PL/SQL.

-- We have provided the code template in the IDE - update the code to solve this problem!

-- Hint: The syntax SUBSTR(v_input_string, i, 1) in PL/SQL is used to extract a substring from a given string v_input_string.
-- SUBSTR(v_input_string, i, 1) essentially extracts a single character from the input string v_input_string at position i.

-- Use the above in your code.








DECLARE
    v_input_string VARCHAR2(100) := 'Hello, World!'; -- Input string
    v_output_string VARCHAR2(100) := '';    -- Reversed string
BEGIN
    -- Loop through the characters of the input string

    
    FOR I IN  1 .. LENGTH(v_input_string) LOOP

        -- Append each character to the beginning of the output string
        v_output_string := SUBSTR(v_input_string , I , 1 ) || v_output_string;
        

    -- End the loop
     END LOOP;
    


    -- Output the reversed string
    DBMS_OUTPUT.PUT_LINE('Original String: ' || v_input_string);
    DBMS_OUTPUT.PUT_LINE('Reversed String: ' || v_output_string);
END;
/