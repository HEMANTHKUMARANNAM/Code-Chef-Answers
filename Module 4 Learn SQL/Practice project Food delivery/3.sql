-- Write a query to output the all the data for orders received between 12 pm and 1 pm.

-- Note that 1 pm in 24 hour conversion is represented as 13
-- Expected output
-- ┌────────────┬────────────┬─────────────┬───────────────┬─────────────────┬─────────────────┐
-- │  order_id  │ order_time │ customer_id │ customer_name │ address_pincode │ apartment_floor │
-- ├────────────┼────────────┼─────────────┼───────────────┼─────────────────┼─────────────────┤
-- │ 2304111235 │ 12.05      │ 12445       │ Anna          │ 122001          │ 3               │
-- │ 2304111236 │ 12.05      │ 12345       │ Alba          │ 122001          │ 4               │
-- │ 2304111237 │ 12.15      │ 22212       │ John          │ 122002          │ 5               │
-- │ 2304111238 │ 12.16      │ 22213       │ Diya          │ 122002          │ 3               │
-- │ 2304111239 │ 12.18      │ 22214       │ Avni          │ 122002          │ 3               │
-- │ 2304111240 │ 12.45      │ 12445       │ Anna          │ 122001          │ 3               │
-- │ 2304111241 │ 12.55      │ 53421       │ Jack          │ 122001          │ 2               │
-- │ 2304111243 │ 12.58      │ 22216       │ Salim         │ 122003          │ 4               │
-- └────────────┴────────────┴─────────────┴───────────────┴─────────────────┴─────────────────┘
-- Your database is named 'Orders' and has the following columns

-- order_id (INT)
-- order_time (DOUBLE)
-- customer_id (VARCHAR)
-- customer_name (VARCHAR)
-- address_pincode (INT)
-- apartment_floor (INT)
-- Did you like the problem?








-- ANSWER


/* Write a query to output the all the data for orders received between 12 pm and 1 pm. */

select * from Orders
where order_time like '12.%';


