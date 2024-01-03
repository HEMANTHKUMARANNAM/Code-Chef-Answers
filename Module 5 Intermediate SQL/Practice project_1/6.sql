-- Each supermarket has items in its store and additional items in its warehouse.
-- Let us find out the combined list of items available.

-- Task
-- Write a query to do the following

-- Output a table with the list of all items in the supermarket.
-- The table 'Item' has the list of items in the store and the table 'Item_adn' has the list of items in the warehouse
-- Expected output
-- ┌─────────┬───────────┐
-- │ Item_id │ Item_Name │
-- ├─────────┼───────────┤
-- │ 1       │ Apple     │
-- │ 2       │ Mango     │
-- │ 3       │ Potato    │
-- │ 4       │ Grapes    │
-- │ 5       │ Oranges   │
-- │ 6       │ Pineapple │
-- └─────────┴───────────┘
-- The tables 'Item' and 'Item_adn' have the following columns

-- Item_id (INT)
-- Item_Name (VARCHAR)




-- ANSWER

/* Write a query to output a table with the list of all items in the supermarket. There already exit a table 'Item' there is another table 'Item_adn' The task is to combine these two tables. */


select *
from Item
union
select *
from Item_adn;