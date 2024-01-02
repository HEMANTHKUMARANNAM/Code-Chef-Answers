-- In this module we'll learn the concept of data transformation using 'Subqueries'. Subqueries (also known as nested queries or inner queries) are used to transform data in a table by creating a new table that is based on the results of a subquery.
-- This new table can be used as a source for further analysis or used to create a new table. This is referred to as data transformation or table transformation.

-- Here are some examples of table transformation using subqueries:

-- Filtering based on subquery: A subquery can be used to filter rows from a table based on a condition.
-- Creating a new table using subquery: A subquery can be used to create a new table based on the results of a query.
-- Updating a table using subquery: A subquery can be used to update a table by setting the values of one or more columns based on a condition.
-- We'll use restaurant database to learn about subqueries.

-- Task
-- Write a query to output the first 3 rows of the table 'food'

-- Expected output
-- ┌──────┬────────────┬────────┬─────────────┐
-- │ f_id │   f_name   │ f_cost │   f_type    │
-- ├──────┼────────────┼────────┼─────────────┤
-- │ 1    │ Pizza      │ 10     │ Continental │
-- │ 2    │ Burger     │ 8      │ Continental │
-- │ 3    │ Fried Rice │ 12     │ Chinese     │
-- └──────┴────────────┴────────┴─────────────┘





/* Write a query to output the first 3 rows of the table 'food' */


select *
from food
limit 3;
