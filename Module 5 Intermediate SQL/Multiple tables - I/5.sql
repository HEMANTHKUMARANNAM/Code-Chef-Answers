-- In the previous problem our task was to join the table 'student' and 'course'.
-- There could be cases where none of the students has opted for a particular course.

-- In such cases, when the tables are joined, the rows which does not match are excluded by default.
-- The row which has the name of the course which IS NOT opted by any of the student WILL BE EXCLUDED when both the tables are joined.
-- When the tables are joined in this manner its called Inner Joins.

-- Task
-- Write a query to do the following

-- Join the tables 'student' and 'course' and output all its entries.
-- Check if you can find the course with id ENG201 in the output.
-- Expected output

-- St_id	St_Name	Department	Course_id	Course_id	Course_Name	Credits	Prof_id
-- 1002	Emily Brown	History	HIS102	HIS102	World History II	3	2004
-- 1005	Michael Chen	Biology	BIO103	BIO103	Principles of Biology	4	2005



-- ANSWER