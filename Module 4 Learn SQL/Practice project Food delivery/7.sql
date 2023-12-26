-- You are given a query to do the following but the query is incorrect.

-- Output the customer_names for the following query conditions

-- Customers who live in pincodes 122001 OR 122002
-- Who placed an order before 12.30 PM
-- Who stay on the 3rd floor or higher
-- Expected output
-- ┌───────────────┐
-- │ customer_name │
-- ├───────────────┤
-- │ Anna          │
-- │ Alba          │
-- │ John          │
-- │ Diya          │
-- │ Avni          │
-- └───────────────┘
-- Your database is named 'Orders' and has the following columns

-- order_id (INT)
-- order_time (DOUBLE)
-- customer_id (VARCHAR)
-- customer_name (VARCHAR)
-- address_pincode (INT)
-- apartment_floor (INT)







-- ANSWER

/* The query given below is incorrect. Debug this query to solve the problem */
SELECT customer_name
FROM Orders
WHERE (address_pincode = 122001 OR address_pincode = 122002)
AND order_time < 12.30
AND apartment_floor >= 3;