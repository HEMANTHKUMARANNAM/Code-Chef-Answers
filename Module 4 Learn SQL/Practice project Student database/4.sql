-- Write a query to output the following

-- Find the total outstanding fee of the students for each department
-- Rename the column header as 'fee_outstanding'
-- Group by each department
-- Expected output
-- ┌────────────┬──────────────────────┐
-- │ Department │ fee_outstanding      │
-- ├────────────┼──────────────────────┤
-- │ Arts       │ 7150                 │
-- │ Commerce   │ 7700                 │
-- │ Science    │ 2350                 │
-- │ Statistics │ 1225                 │
-- └────────────┴──────────────────────┘
-- Your database is named 'student' and has the following columns

-- Student_Id (INT)

-- Student_Name(VARCHAR)

-- Age (INT)

-- Marks (INT)

-- Fee_outstanding (INT)

-- Department(VARCHAR)






-- ANSWER


/* Write a query to output the following
- Find the total outstanding fee of the students for each department
- Group by each department */

select department,
CAST(TOTAL(Fee_outstanding) AS INT) AS fee_outstanding 
FROM student
GROUP BY department;