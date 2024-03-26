-- Row level triggers
-- Row-level triggers fire once for each row affected by the triggering event (e.g., INSERT, UPDATE, DELETE).

-- They are useful when you need to perform actions or validations on individual rows of a table.

-- Check the Row-level trigger in the IDE. Suppose you have a table employees and you want to create a trigger that automatically updates the last_updated column with the current date and time whenever a row is updated.

-- In this example, the update_last_updated trigger fires before each row in the employees table is updated (BEFORE UPDATE).
-- It updates the last_updated column of the affected row with the current date and time (SYSDATE).















NEXT