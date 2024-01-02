-- We have learned the concept of Aggregate function in Learn SQL, that it gives a single output value based on the calculation on multiple input values.
-- Now, lets learn the concept of Conditional Aggregate function. In this concept we add a set of condition to the existing Aggregate functions.
-- Below mentioned are some of the commonly used Aggregate functions:

-- COUNT() - counts the number of rows that meet the given conditions
-- MAX() & MIN() - return the largest & smallest value that meet the query conditions
-- SUM() & AVG() - return the sum and average of the values in the column
-- GROUP BY - used to combine rows with identical values into summary rows. It is typically used with aggregate functions such as COUNT, SUM, etc
-- Task
-- Write a query to output the first 5 rows of the table 'marks'.



/* Write a query to output the first 5 rows of the table marks */

select *
from marks
limit 5;