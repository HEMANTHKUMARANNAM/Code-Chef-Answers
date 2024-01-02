-- The INTERSECT operator combines two SELECT statements, but only returns the rows that are common to both SELECT statements.

-- Below is the format for the same:

--      SELECT * FROM table_1
--      INTERSECT
--      SELECT * FROM table_2;
-- Task
-- Consider a supermarket database

-- Table 'fruit' has the list of all fruits available in the market(few of them could be out of stock).
-- Table 'inventory' has the updated list of items in the supermarket.
-- Write a query to find the list of fruits available in the supermarket. (f_name column has the name of the fruits and inv_name has the name of the items in the inventory, you are suppose to output the name of the fruits.)

-- Expected output
-- ┌────────────┐
-- │   f_name   │
-- ├────────────┤
-- │ Banana     │
-- │ Cherry     │
-- │ Grape      │
-- │ Kiwi       │
-- │ Pear       │
-- │ Pineapple  │
-- │ Watermelon │
-- └────────────┘


/* Write a query to find the list of fruits available in the supermarket.
(f_name column has the name of the fruits and inv_name has the name of inventories, you are suppose to output the name of the fruits.)*/


SELECT f_name FROM fruit
INTERSECT
SELECT inv_name FROM inventory;