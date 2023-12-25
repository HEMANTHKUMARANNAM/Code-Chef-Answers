-- Constraints provide details about the usage of a column and are applied after specifying the column's data type.
-- They enable the database to reject any inserted data that violates a particular constraint.
-- The following statement is used to impose constraints on the "employee" table.

-- Below is the query to create a table student with a set of constraints.

--      CREATE TABLE  student(
--      student_id INTEGER PRIMARY KEY,
--      student_Name TEXT UNIQUE,
--      Department TEXT NOT NULL); 
-- PRIMARY KEY can be utilized to uniquely identify a row in a table.
-- When attempting to insert a row with the same value as an existing row in the table, a constraint violation will occur, preventing the insertion of the new row.
-- UNIQUE columns contain distinct values for each row, similar to "PRIMARY KEY" columns, but unlike primary key columns, a table can have multiple unique columns..
-- NOT NULL columns must have a value assigned to them.
-- When attempting to insert a row without providing a value for a "NOT NULL" column, a constraint violation will occur, preventing the insertion of the new row.
-- Task
-- Write a query to create a table employee with the mentioned constraints on the columns :

-- employee_id - INTEGER PRIMARY KEY,
-- employee_Name - TEXT UNIQUE,
-- Department - TEXT NOT NULL



-- ANSWER

/* Write a query to create a table employee with the mentioned constraints on the columns : 
employee_id - PRIMARY KEY, 
employee_Name -UNIQUE, 
Department -NOT NULL */


CREATE TABLE employee(
employee_id INTEGER PRIMARY KEY,
employee_Name TEXT UNIQUE,
Department TEXT NOT NULL
);


SELECT * FROM employee


