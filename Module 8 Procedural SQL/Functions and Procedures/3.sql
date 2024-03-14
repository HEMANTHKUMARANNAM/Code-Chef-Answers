-- Task
-- We have created 2 functions in PLSQL

-- The 1st function concatenate_strings concatenates 2 strings
-- The 2nd function convert_case converts the string to upper case or lower case depending on the parameter.
-- Update the functions to get the correct output.

-- Expected output
-- Joined string: This is String 1THIS IS string 2
-- Upper case String1: THIS IS STRING 1
-- Lower case String2: this is string 2










CREATE OR REPLACE FUNCTION concatenate_strings(str1 VARCHAR2, str2 VARCHAR2) RETURN VARCHAR2 IS
    result VARCHAR2(4000);
BEGIN
    result := str1 || str2;
    RETURN result;
END;
/

CREATE OR REPLACE FUNCTION convert_case(str VARCHAR2, case_type VARCHAR2) RETURN VARCHAR2 IS
    result VARCHAR2(4000);
BEGIN
    IF case_type = 'UPPER' THEN
        result := UPPER(str);
    ELSIF case_type = 'LOWER' THEN
        result := LOWER(str);
    END IF;
    
    RETURN result;
END;
/

DECLARE
    string1 VARCHAR2(50) := 'This is String 1';
    string2 VARCHAR2(50) := 'THIS IS string 2';
    concatenated_string VARCHAR2(100);
    upper_string1 VARCHAR2(50);
    lower_string2 VARCHAR2(50);
    
BEGIN
    concatenated_string := concatenate_strings(string1, string2);
    DBMS_OUTPUT.PUT_LINE('Joined string: ' || concatenated_string);
    upper_string1 := convert_case(string1, 'UPPER');
    DBMS_OUTPUT.PUT_LINE('Upper case String1: ' || upper_string1);
    lower_string2 := convert_case(string2, 'LOWER');
    DBMS_OUTPUT.PUT_LINE('Lower case String2: ' || lower_string2);

END;
/






-- this is end