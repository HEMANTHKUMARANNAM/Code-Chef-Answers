-- 'Cafe CodeChef' has hired you as their data analyst.
-- Your job is to help the business development to give insights on the revenue generated from the cafe.

-- Lets take a look at the table 'Orders'.

-- Task
-- Output the table 'Orders', limited to 5 entries.

-- Expected output
-- ┌──────────┬──────────────────┬──────────┬──────────┬───────┬────────┐
-- │ order_id │    item_name     │ cuisine  │ category │ price │ status │
-- ├──────────┼──────────────────┼──────────┼──────────┼───────┼────────┤
-- │ 1        │ Veggie Burger    │ American │ Veg      │ 9.99  │ Sold   │
-- │ 3        │ Margherita Pizza │ Italian  │ Veg      │ 14.99 │ Sold   │
-- │ 4        │ Pepperoni Pizza  │ Italian  │ Non veg  │ 16.99 │ Sold   │
-- │ 2        │ Veggie Burger    │ American │ Veg      │ 9.99  │ Sold   │
-- │ 6        │ Pepperoni Pizza  │ Italian  │ Non veg  │ 16.99 │ Sold   │
-- └──────────┴──────────────────┴──────────┴──────────┴───────┴────────┘



/* Output the table 'Orders', limited to 5 entries. */


select * from Orders
limit 5;

