-- Ok - lets use the concept.

-- Write a query which does the following

-- Join the tables 'student' and 'course'
-- Uses 'Course_id' to match both the tables and output the joined table
-- Output all entries from the joined table
-- Expected output

-- St_id	St_Name	Department	Course_id	Course_id	Course_Name	Credits	Prof_id
-- 1001	John Smith	Computer Science	CS101	CS101	Introduction to Computer Science	3	2001
-- 1002	Emily Brown	History	HIS102	HIS102	World History II	3	2004
-- 1003	David Lee	Mathematics	MAT202	MAT202	Linear Algebra	2	2002
-- 1004	Sarah Johnson	English	ENG201	ENG201	Advanced Writing	4	2003
-- 1005	Michael Chen	Biology	BIO103	BIO103	Principles of Biology	4	2005






/* Write a query to join the table 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */

SELECT *
FROM student
JOIN course
ON student.Course_id = course.Course_id;