-- Previously we have used COUNT to fetch the total number of rows in a table or a specific column.
-- Using the Case statement, we can add certain conditions and those cells which satisfy condition will only be counted.

-- Below is a query to count the number of employees who have a salary more than 200,000 in each departments:

--        SELECT department, 
--        COUNT(CASE WHEN salary> 200000 THEN 1 ELSE NULL END) as High_Salary 
--        FROM employee
--        GROUP BY department;
-- In the above query, all the cells in the column 'salary' is checked if it is more than 200000.

-- If its satisfies it will return 1
-- Else return NULL.
-- The count is applied to the 1's and NULL's are ignored.
-- Task
-- Write a query to count the number of students across departments who has scored more than 80 marks.
-- Alias the count coulmn as 'Dept_HighScore_Count' Your table 'student' has the following columns:

-- St_id
-- St_name
-- Marks
-- Department
-- Expected output
-- ┌────────────┬──────────────────────┐
-- │ department │ Dept_HighScore_Count │
-- ├────────────┼──────────────────────┤
-- │ Biology    │ 0                    │
-- │ English    │ 0                    │
-- │ History    │ 3                    │
-- │ Math       │ 4                    │
-- │ Physics    │ 4                    │
-- └────────────┴──────────────────────┘



/* Write a query to count the number of students across departments who has scored more than 80 marks.*/

select department,
count( CASE WHEN marks > 80 THEN 1 ELSE NULL END) AS Dept_HighScore_Count 
FROM student
GROUP BY department;
