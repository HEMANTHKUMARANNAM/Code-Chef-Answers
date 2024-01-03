
-- CASE WHEN are used to add conditional logic to the sql queries.
-- Let's try it out with an example. Imagine we want to get a count of employees of an organisation categorised based on their pay as follows:

-- Less than Rs.20000 : Level 1
-- Rs.20001- Rs.40000 : Level 2
-- More than Rs.40000 : Level 3
-- The query for the same is as mentioned below:

--       SELECT
--       CASE
--         WHEN pay < 20000 THEN 'Level 1'
--         WHEN pay BETWEEN 20001 AND 40000 THEN 'Level 2'
--         WHEN pay >= 40000 THEN 'Level 3'
--         ELSE 'NA'             -- If the above 3 conditions are not met, the row entry will be NA
--       END AS Pay_category,    -- Renaming the column as Pay_category
--       COUNT(*) as emp_count
--       FROM employee
--       GROUP BY 1;
-- If the ELSE condition is satisfied then a new category 'NA' will be added. However, it is not necessary to add the ELSE statement. In the absence of ELSE, if none of the cases satisfies then it will return a NULL value. 'Pay_category' is the alias for the CASE statement.

-- Task
-- Write a query to do the following

-- Categorise the students based on the marks into grades.
-- Marks Less than 50 - C,
-- Marks between 50 and 80 - B,
-- Marks more than 80 - A
-- You need to output the following - 'Grades' and 'student_count'
-- Give the Alias name for the CASE as 'Grades'
-- Count the students in each category and assign it the alias 'student_count'
-- Your table 'marks' has the following columns :

-- St_id
-- Marks




/* Write a query to categorize the students based on the marks into grades and output the count of students in each grade. Give the Alias name for the CASE as 'Grades"
- Marks Less than 50 - C,
- Marks between 50 and 80 - B,
- Marks more than 80 - A */

select  
CASE
    when marks < 50 THEN 'C'
    WHEN marks between 50 AND 80 THEN 'B'
    WHEN marks > 80 THEN 'A'
    else 'NA'
    
END AS 'Grades',
COUNT(*) as St_id AS 'student_count'
FROM marks
GROUP BY 1;
