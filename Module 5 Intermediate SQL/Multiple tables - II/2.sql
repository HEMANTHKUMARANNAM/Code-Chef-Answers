-- In the past few problems we've learned how to join the tables which were inter related.
-- Now, lets try to join tables which are not at all related.
-- We use the concept of CROSS JOIN to join such tables. Below is query to cross join the tables 'Manufacture' and 'Model'

--  SELECT *
--  FROM Manufacture
--  CROSS JOIN Model
-- Below mentioned are the tables 'Manufacture' and 'Model'

-- Table Manufacture:

-- mfg_id	company
-- 1001	Hyundai
-- 1002	Tata
-- 1003	Suzuki
-- Table Model:

-- cmp_id	company
-- 1	Sedan
-- 2	Suv
-- After executing the above query we get the cross joined table as below

-- mfg_id	company	cmp_id	company
-- 1001	Hyundai	1	Sedan
-- 1001	Hyundai	2	Suv
-- 1002	Tata	1	Sedan
-- 1002	Tata	2	Suv
-- 1003	Suzuki	1	Sedan
-- 1003	Suzuki	2	Suv
-- Task
-- Write a query to do the following

-- Cross join the table 'student' and 'course' and check out all possible courses a student can opt.
-- Output only two columns, the name of the student as 'St_Name' and courses as 'Course_Name'.
-- Expected output
-- ┌───────────────┬──────────────────────────────────┐
-- │    St_Name    │           Course_Name            │
-- ├───────────────┼──────────────────────────────────┤
-- │ John Smith    │ Introduction to Computer Science │
-- │ John Smith    │ World History II                 │
-- │ John Smith    │ Linear Algebra                   │
-- │ John Smith    │ Advanced Writing                 │
-- │ John Smith    │ Principles of Bio-technology     │
-- │ Emily Brown   │ Introduction to Computer Science │
-- │ Emily Brown   │ World History II                 │
-- │ Emily Brown   │ Linear Algebra                   │
-- │ Emily Brown   │ Advanced Writing                 │
-- │ Emily Brown   │ Principles of Bio-technology     │
-- │ David Lee     │ Introduction to Computer Science │
-- │ David Lee     │ World History II                 │
-- │ David Lee     │ Linear Algebra                   │
-- │ David Lee     │ Advanced Writing                 │
-- │ David Lee     │ Principles of Bio-technology     │
-- │ Sarah Johnson │ Introduction to Computer Science │
-- │ Sarah Johnson │ World History II                 │
-- │ Sarah Johnson │ Linear Algebra                   │
-- │ Sarah Johnson │ Advanced Writing                 │
-- │ Sarah Johnson │ Principles of Bio-technology     │
-- │ Michael Chen  │ Introduction to Computer Science │
-- │ Michael Chen  │ World History II                 │
-- │ Michael Chen  │ Linear Algebra                   │
-- │ Michael Chen  │ Advanced Writing                 │
-- │ Michael Chen  │ Principles of Bio-technology     │
-- └───────────────┴──────────────────────────────────┘








-- ANSWER

/* Write a query cross join the table 'student' and 'course' and check out all possible courses a student can opt. Output the table after cross join */



SELECT St_Name,Course_Name
FROM student
CROSS JOIN course