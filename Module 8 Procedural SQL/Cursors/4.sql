-- Explicit cursors - attributes
-- In PL/SQL, when working with explicit cursors, you can use various attributes to check the status of the cursor. These attributes provide information about the state of the cursor, such as whether it has fetched all rows, whether it's currently fetching a row, or if no rows are found. The commonly used attributes are:

-- %FOUND: Returns TRUE if the last fetch operation successfully returned a row.
-- It evaluates to FALSE if the cursor has not fetched any rows or if all rows have been fetched.
-- %NOTFOUND: Returns TRUE if the last fetch operation found no rows.
-- It evaluates to FALSE if the cursor has fetched at least one row.
-- %ROWCOUNT: Returns the number of rows fetched so far by the cursor.
-- Check out and run the code in the IDE.