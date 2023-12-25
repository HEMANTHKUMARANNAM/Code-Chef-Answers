-- Rows are added into a table using the INSERT INTO statement.
-- Below is the query to add the details of 'Abel George' to the existing table student.

--      INSERT INTO student(Student_id,student_Name,Contact_Number)
--      VALUES (34,'Abel George',910023432);
-- The clause INSERT INTO is used to append the specified row or multiple rows to a table.
-- student is the table the row is added to.
-- (Student_id,student_Name,Contact_Number) are the parameters used to specify the columns into which data will be inserted.
-- VALUES is used to specify the data that is being inserted.
-- (34,'Abel George',910023432) is a parameter identifying the values being inserted.
-- 34: an integer that will be added to Student_id column
-- 'Abel George': text that will be added to student_Name column. It should always be in single quotes.
-- 910023432: Number that will be added to Contact_Number column.
-- Multiple rows can be added to a table in a single query by separating the parameters(used to insert data to a single row) by a comma ','

-- Task
-- Write a query to insert the below mentioned employee details to the table 'employee'.

--   1>Employee_id - 4, 
--   Employee_Name - 'Marcus Garcia', 
--   Department - 'Product'

--   2>Employee_id - 5, 
--   Employee_Name - 'Samantha Park', 
--   Department -'Hr'
-- Code it out in the IDE.



/* Write a query to insert the below mentioned employee details to the table 'employee' */

--  INSERT INTO employee( Employee_id ,Employee_Name ,  Department )
-- VALUES 
-- (4, 'Marcus Garcia' ,  'Product'),
-- (5, 'Samantha Park' , 'Hr');