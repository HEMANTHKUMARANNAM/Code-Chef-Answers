-- A subquery is a query nested inside another query.

-- A non-correlated subquery is a subquery that can be executed independently of the outer query.

-- The subquery does not depend on the outer query for its results.
-- Non-correlated subqueries are typically used to retrieve a single value or a set of values that are used in the WHERE clause or the HAVING clause of the outer query.
-- Let us take an example for a non-correlated subquery

-- Suppose you have customer information in the table 'customers' and their restaurant order information in the table 'orders'
-- Below is the query to get the customer information of those who have placed an order with order value >1000.
-- Query:

-- SELECT * 
-- FROM customers
-- WHERE customer_id IN ( 
--      SELECT customer_id 
--      FROM orders
--      WHERE order_value >1000);
-- Task
-- Write a query to fetch Name and type of the food from the table 'food' which has got rating less than 3 in the table 'ratings'.

-- Expected output
-- ┌────────┬─────────┐
-- │ f_name │ f_type  │
-- ├────────┼─────────┤
-- │ Tacos  │ Mexican │
-- └────────┴─────────┘
-- Table 'food' has the following columns:

-- f_id (int)
-- f_name (text)
-- f_cost (int)
-- f_type (int).
-- Table 'ratings' has the following columns:

-- f_id (int)
-- f_rating (text).




/* Write a query to fetch Name and type of the food from the table 'food' which has got rating  less than 3 in the table 'ratings'.*/

select f_name,f_type
from food
join ratings
on food.f_id = ratings.f_id
where f_rating < 3;



