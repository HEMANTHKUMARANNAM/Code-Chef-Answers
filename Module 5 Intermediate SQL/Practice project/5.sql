-- Write a query which does the following

-- Output a table with the list of customer - purchase item combinations using CROSS JOIN.
-- The output table should contain the columns 'Customer_Name' and 'Item_Name'.
-- Expected output
-- ┌───────────────┬───────────┐
-- │ Customer_Name │ Item_Name │
-- ├───────────────┼───────────┤
-- │ John          │ Apple     │
-- │ John          │ Mango     │
-- │ John          │ Potato    │
-- │ Sara          │ Apple     │
-- │ Sara          │ Mango     │
-- │ Sara          │ Potato    │
-- │ Adam          │ Apple     │
-- │ Adam          │ Mango     │
-- │ Adam          │ Potato    │
-- │ Emily         │ Apple     │
-- │ Emily         │ Mango     │
-- │ Emily         │ Potato    │
-- │ Tom           │ Apple     │
-- │ Tom           │ Mango     │
-- │ Tom           │ Potato    │
-- └───────────────┴───────────┘
-- Your database 'Customer' has the following columns

-- Customer_id (INT)
-- Customer_Name (VARCHAR)
-- Customer_Age (INT)
-- Your database 'Item' has the following columns

-- Item_id (INT)
-- Item_Name (VARCHAR)



