-- Practice - Report Card
-- We have a table of student containing their scores in 3 subjects - Math, Science and English.

-- Task
-- We want a PL/SQL query which uses cursors to output a final marklist for each student.

-- Max scores possible in each of the 3 subjects is 100
-- If sum of scores in 3 subjects is greater than 105, then final_result is 'Pass' else 'Fail'
-- Expected output
-- Roll number: 1, Student name: John
-- Math: 90, Sci: 85, Eng: 80
-- Total score: 255, Final result: Pass
-- Roll number: 2, Student name: Emma
-- Math: 35, Sci: 35, Eng: 34
-- Total score: 104, Final result: Fail
-- Roll number: 3, Student name: Michael
-- Math: 80, Sci: 70, Eng: 85
-- Total score: 235, Final result: Pass
-- Roll number: 4, Student name: Sophia
-- Math: 100, Sci: 0, Eng: 0
-- Total score: 100, Final result: Fail
-- Roll number: 5, Student name: William
-- Math: 95, Sci: 85, Eng: 90
-- Total score: 270, Final result: Pass







DECLARE
    CURSOR student_cursor IS
        SELECT roll_number, student_name, math_score, sci_score, eng_score
        FROM student_details;
    v_roll_number student_details.roll_number%TYPE;
    v_student_name student_details.student_name%TYPE;
    v_math_score student_details.math_score%TYPE;
    v_sci_score student_details.sci_score%TYPE;
    v_eng_score student_details.eng_score%TYPE;
    v_total_score NUMBER;
    v_final_result VARCHAR2(10);
BEGIN
    OPEN student_cursor;
    LOOP
        FETCH student_cursor INTO v_roll_number , v_student_name , v_math_score , v_sci_score , v_eng_score ;
        EXIT when student_cursor%NOTFOUND;
        
        -- Calculate total score
        
        v_total_score := v_math_score + v_eng_score + v_sci_score;


        -- Determine final result
        
        IF v_total_score > 105 THEN 
            v_final_result := 'Pass';
        else
            v_final_result := 'Fail';
        END IF;




        
        -- Output marklist
        DBMS_OUTPUT.PUT_LINE('Roll number: ' || v_roll_number || ', Student name: ' || v_student_name);
        DBMS_OUTPUT.PUT_LINE('Math: ' || v_math_score || ', Sci: ' || v_sci_score || ', Eng: ' || v_eng_score);
        DBMS_OUTPUT.PUT_LINE('Total score: ' || v_total_score || ', Final result: ' || v_final_result);
    END LOOP;
    CLOSE student_cursor;
END;
/



