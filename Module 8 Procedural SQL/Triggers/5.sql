-- Statement level triggers
-- Statement-level triggers fire once for each triggering statement, regardless of the number of rows affected by the statement.

-- They are useful when you need to perform actions or validations based on the overall outcome of a statement.

-- Run the code in the IDE. It is an example of an UPDATE statement on the employees table that can utilize the log_update_rows trigger.

-- When you execute this UPDATE statement, the log_update_rows trigger will automatically execute after the UPDATE operation on the employees table.
-- The trigger will log the total number of rows affected by the UPDATE statement, along with the current date and time, into the update_log table. Note: The trigger log_update_rows in its current form counts the total number of rows in the employees table every time it is executed, regardless of the number of rows actually affected by the UPDATE statement.
















NEXT