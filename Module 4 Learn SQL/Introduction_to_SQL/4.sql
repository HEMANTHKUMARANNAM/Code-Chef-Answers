-- Using a CREATE TABLE statement in SQL enables the creation of a new table in the database.
-- This statement can be used whenever a new table needs to be created, starting with a blank slate.
-- The example statement below demonstrates the creation of a new table called student.

--     CREATE TABLE table_name (
--        column_1 data_type,
--        column_2 data_type,
--        column_3 data_type 
--     );
-- The above query will create an empty table 'student' as mentioned below:

-- Student_id	Student_Name	Department
-- Task
-- Let us now try and build the table that we saw earlier, starting from scratch.
-- Write a query to create a table 'employee', with columns employee_id, employee_Name and Department.
-- Code it out in the IDE.













-- ANSWER


/* Write a query to create a table 'employee', with columns employee_id, employee_Name and Department. 
Update the blanks below to solve this problem */

CREATE TABLE employee
(
    Employee_id INT , /* Integer Data type assigned to the variable */
    Employee_Name  TEXT, /* TEXT Data type assigned to the variable */
    Department TEXT /* TEXT Data type assigned to the variable */
);