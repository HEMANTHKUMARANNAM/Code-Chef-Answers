-- What are triggers
-- Triggers are special PL/SQL blocks associated with tables or views that are automatically executed or fired in response to specific events (such as INSERT, UPDATE, DELETE) occurring on the associated table or view.

-- Suppose you have a database table named orders that stores information about customer orders.

-- Each order includes the order number, customer ID, order date, and total amount.
-- You want to enforce a business rule that prevents orders with a total amount exceeding a certain threshold from being inserted into the orders table.
-- You can create a trigger to enforce this business rule by automatically checking the total amount of each order before it is inserted into the orders table. If the total amount exceeds the threshold, the trigger will raise an error and prevent the insertion of the order.
-- Check such a trigger in the IDE.

-- In this example, the check_order_amount trigger is fired before each new row is inserted into the orders table (BEFORE INSERT).
-- For each row being inserted, the trigger checks if the total_amount of the new order exceeds the threshold (in this case, $1000).
-- If it does, the trigger raises an application error, preventing the insertion of the order.



