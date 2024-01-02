-- Welcome to the Project to help you practice everything that you learnt about joining multiple tables.
-- Imagine you are hired as data analyst at a Supermarket.

-- Your table is named 'Customer' and has the following columns

-- Customer_id (INT)
-- Customer_Name (VARCHAR)
-- Customer_Age (INT)
-- Task
-- Write a query to output the table 'Customer'. Limit your results to 3 rows.

-- Expected output
-- ┌─────────────┬───────────────┬──────────────┐
-- │ Customer_id │ Customer_Name │ Customer_Age │
-- ├─────────────┼───────────────┼──────────────┤
-- │ 1           │ John          │ 15           │
-- │ 2           │ Sara          │ 16           │
-- │ 3           │ Adam          │ 17           │
-- └─────────────┴───────────────┴──────────────┘


/* Write a query to output the table 'Customer'. Limit your results to 3 rows. */


select *
FROM Customer
Limit 3;