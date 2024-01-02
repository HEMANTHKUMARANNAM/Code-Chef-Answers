-- Primary Key in a table is used to uniquely identify a row in a table. It also has a certain criteria

-- The value should not be NULL
-- Each value should be unique
-- A table should not have more than one Primary key
-- You might have already observed that primary keys are used to join tables.
-- Joining the table is only possible if there is a matching column in the tables which are to be joined.
-- Which means that a table's primary key can be found in a different table.

-- A primary key of a table when present in a different table is referred to as a Foreign Key.
-- In the below table student, St_id is a Primary key and Course_id (which is a primary key of the table 'course') is a Foreign Key

-- Table student:

-- St_id	St_Name	Department	Course_id
-- 1001	John Smith	Computer Science	CS101
-- 1002	Emily Brown	History	HIS102
-- 1003	David Lee	Mathematics	MAT202
-- Table course:

-- Course_id	Course_Name	Credits	Prof_id
-- CS101	Introduction to Computer Science	3	2001
-- HIS102	World History II	3	2004
-- MAT202	Linear Algebra	2	2002
-- Below is the query to create a table student defining St_id as the Primary Key and Course_id(from the table 'course') as foreign key.

--   CREATE TABLE student (
--   St_id INT PRIMARY KEY,
--   St_Name TEXT,
--   Department TEXT,
--   Course_id TEXT,
--   FOREIGN KEY (Course_id) REFERENCES course(Course_id)
--   );







-- ANSWER


-- Correct Answer:

Foreign key is a field in one table that refers to the primary key of another table.