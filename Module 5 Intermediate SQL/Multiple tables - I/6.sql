-- We've learned that by default SQL removes the rows which doesn't match while joining tables.

-- However, if we wish to join two tables whose rows doesn't match, we can do that using LEFT JOIN.
-- When two tables are joined using 'LEFT JOIN', and if the rows don't match,

-- All the rows in the first table(left) will be kept as such and
-- Whenever a row doesn't a corresponding row in the second table (right), those columns will be kept blank.
-- Below is the query to join the table 'customer' and 'order' using LEFT JOIN

--      SELECT *
--      FROM customer
--      LEFT JOIN order
--      ON customer.cust_id = order.cust_id;
-- Task
-- Write a query to do the following:

-- JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
-- LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
-- Expected output

-- St_id	St_Name	Department	Course_id	Course_id	Course_Name	Credits	Prof_id
-- 1001	John Smith	Computer Science	CS101	CS101	Introduction to Computer Science	3	2001
-- 1002	Emily Brown	History	HIS102	HIS102	World History II	3	2004
-- 1003	David Lee	Mathematics	MAT202	MAT202	Linear Algebra	2	2002
-- 1004	Sarah Johnson	English	ENG201	ENG201	Advanced Writing	4	2003
-- St_id	St_Name	Department	Course_id	Course_id	Course_Name	Credits	Prof_id
-- 1001	John Smith	Computer Science	CS101	CS101	Introduction to Computer Science	3	2001
-- 1002	Emily Brown	History	HIS102	HIS102	World History II	3	2004
-- 1003	David Lee	Mathematics	MAT202	MAT202	Linear Algebra	2	2002
-- 1004	Sarah Johnson	English	ENG201	ENG201	Advanced Writing	4	2003
-- 1005	Michael Chen	Biology	BIO103	NULL	NULL	NULL	NULL





/* Write a query to do the following:
 - JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
 - LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */
 

 
SELECT *
FROM student
JOIN course
ON student.Course_id = course.Course_id;
 
SELECT *
FROM student
LEFT JOIN course
ON student.Course_id = course.Course_id;

