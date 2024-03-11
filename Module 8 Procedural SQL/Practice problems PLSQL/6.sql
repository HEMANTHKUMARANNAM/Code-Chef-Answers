-- Practice - Prime numbers
-- Task
-- Write a program to generate all prime numbers below 100.

-- We have provided the code template in the IDE - update the code to solve this problem!










DECLARE
    v_number NUMBER;
    v_is_prime BOOLEAN;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Prime numbers below 100:');

    -- Loop through numbers from 2 to 99
    FOR v_number IN 2..99 LOOP
    
        v_is_prime := true;
        
        FOR I IN 2 .. v_number -1 LOOP
            IF MOD( v_number , I ) =0 then
                v_is_prime := false;
            END if;
        END LOOP;
        
        if v_is_prime = true then
            DBMS_OUTPUT.PUT_LINE(v_number);
        END IF;
    
    END LOOP;
        










END;
/
