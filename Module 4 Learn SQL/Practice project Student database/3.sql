-- Write a query to output the following on separate lines

-- The Average age of the students of the school
-- Rename the column header as 'avg_age'
-- Total Outstanding Fee of the students in 'Arts' department
-- Rename the column header as 'fee_outstanding'
-- Expected Output:
-- ┌──────────┐
-- │ avg_age  │
-- ├──────────┤
-- │ 19.5     │
-- └──────────┘
-- ┌──────────────────────┐
-- │ fee_outstanding      │
-- ├──────────────────────┤
-- │ 7150                 │
-- └──────────────────────┘
-- Your database is named 'student' and has the following columns:

-- Student_Id (INT)

-- Student_Name(VARCHAR)

-- Age (INT)

-- Marks (INT)

-- Fee_outstanding (INT)

-- Department(VARCHAR)






/* Write a query to output the following on separate lines
- The Average age of the students of the school
- Total Outstanding Fee of the students in 'Arts' department */

SELECT AVG(AGE) AS avg_age
FROM STUDENT;

SELECT CAST(TOTAL(Fee_outstanding) AS INT) AS fee_outstanding
FROM STUDENT
WHERE Department = 'Arts';