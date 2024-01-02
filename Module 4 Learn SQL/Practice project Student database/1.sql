-- Welcome to the Project to help you practice everything that you learnt about Aggregate Functions.

-- CodeChef public school has assigned you a task to retrieve couple of data from their student database.
-- Your database is named 'student' and has the following columns:

-- Student_Id (INT)
-- Student_Name(VARCHAR)
-- Age (INT)
-- Marks (INT)
-- Fee_outstanding (INT)
-- Department(VARCHAR)
-- Task
-- Find the numbers of students in the department 'Commerce'. \

-- Expected output
--  ──────────
-- │ 8        │
-- └──────────┘




-- ANSWER

/* Find the numbers of students in the department 'Commerce' */

SELECT COUNT(*) AS ''
FROM student
WHERE Department = 'Commerce';