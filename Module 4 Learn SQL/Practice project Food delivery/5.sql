-- You want to ensure that your delivery boys have to climb the least floors.
-- Write a query to output the entire data sorted by the floors in an ascending order.

-- Expected output
-- ┌────────────┐
-- │  order_id  │
-- ├────────────┤
-- │ 2304111242 │
-- │ 2304111245 │
-- └────────────┘
-- Your database is named 'Orders' and has the following columns

-- order_id (INT)
-- order_time (DOUBLE)
-- customer_id (VARCHAR)
-- customer_name (VARCHAR)
-- address_pincode (INT)
-- apartment_floor (INT)





-- ANSWER


/* You want to ensure that your delivery boys have to climb the least floors.
Write a query to sort the data in an ascending order. */

select * from Orders
ORDER BY apartment_floor ASC;