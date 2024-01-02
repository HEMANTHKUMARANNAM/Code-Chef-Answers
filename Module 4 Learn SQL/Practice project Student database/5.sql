-- Write a query to do the following

-- For each department
-- For each department where the average outstanding fee is less than 500
-- Find the average marks (round to 2 decimal places) of the students
-- Rename the column header as 'avg_marks'
-- Expected Output
-- ┌────────────┬───────────┐
-- │ Department │ avg_marks │
-- ├────────────┼───────────┤
-- │ Science    │ 89.5      │
-- │ Statistics │ 92.14     │
-- └────────────┴───────────┘
-- Your database is named 'student' and has the following columns:

-- Student_Id (INT)

-- Student_Name(VARCHAR)

-- Age (INT)

-- Marks (INT)

-- Fee_outstanding (INT)

-- Department(VARCHAR)





-- ANSWER

/* Write a query to do the following
- For each department
- Find the average marks (round to 2 decimal places) of the students 
- Where the average outstanding fee less than 500
 */
 
select department,
ROUND(AVG(Marks) , 2) AS avg_marks
from student
GROUP BY department
having AVG(Fee_outstanding) < 500;

