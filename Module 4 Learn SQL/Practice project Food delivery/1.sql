-- Welcome to the Project to help you practice everything that you learnt about Queries.

-- Imagine you are the Analytics manager in your favourite local food delivery company.
-- It is lunch-time and you have received food orders in your database and now need to ensure no one goes hungry - else you will get a lot of negative ratings.

-- Your database is named 'Orders' and has the following columns

-- order_id (INT)
-- order_time (DOUBLE)
-- customer_id (VARCHAR)
-- customer_name (VARCHAR)
-- address_pincode (INT)
-- apartment_floor (INT)
-- Go ahead and check the entries in the table in the IDE.
-- Limit your results to 3 rows.







-- ANSWER

/* Write a query to check the entries in the table.
Restrict your query to return 3 rows. */

select * from Orders
limit 3;
