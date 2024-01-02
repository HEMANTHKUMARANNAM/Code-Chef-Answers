-- Find the Minimum and the Maximum marks scored by the students in the department 'Science'.

-- Rename the respective column headers as 'min_marks' and 'max_marks' respectively
-- Output these marks on separate lines.

-- Expected Output:
-- ┌────────────┐
-- │ min_marks  │
-- ├────────────┤
-- │ 85         │
-- └────────────┘
-- ┌────────────┐
-- │ max_marks  │
-- ├────────────┤
-- │ 95         │
-- └────────────┘
-- Your database is named 'student' and has the following columns:

-- Student_Id (INT)

-- Student_Name(VARCHAR)

-- Age (INT)

-- Marks (INT)

-- Fee_outstanding (INT)

-- Department(VARCHAR)


-- ANSWER


/* Find the Minimum and the Maximum marks scored by the students in the department 'Science'.
Output these marks on separate lines. */

select MIN(MARKS) AS min_marks
FROM student
WHERE Department = 'Science';


select MAX(MARKS) AS max_marks
FROM student
WHERE Department = 'Science';