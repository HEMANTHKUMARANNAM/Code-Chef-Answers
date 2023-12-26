-- Write a query to output the distinct pin-codes from where orders have been received.

-- Expected output
-- ┌─────────────────┐
-- │ address_pincode │
-- ├─────────────────┤
-- │ 122001          │
-- │ 122002          │
-- │ 122003          │
-- │ 122004          │
-- └─────────────────┘
-- Your database is named 'Orders' and has the following columns

-- order_id (INT)
-- order_time (DOUBLE)
-- customer_id (VARCHAR)
-- customer_name (VARCHAR)
-- address_pincode (INT)
-- apartment_floor (INT)











-- ANSWER

/* Write a query to output the distinct pin-codes from where orders have been received. */

select distinct address_pincode from Orders;
