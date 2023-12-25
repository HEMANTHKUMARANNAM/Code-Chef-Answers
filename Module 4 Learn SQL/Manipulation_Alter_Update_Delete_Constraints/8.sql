-- The Query written in the console is trying to insert data to the table employee.
-- Debug this query to run the problem successfully.

-- Don’t worry about the actual values as long as you get the query to run.
-- Your database is named 'employee' and has the following columns

-- Id PRIMARY KEY(INT)
-- Name (TEXT),
-- Age (INT),
-- Address UNIQUE (TEXT)







-- ANSWER


/* Debug this query to run the problem successfully. 
- Don’t worry about the actual values as long as you get the query to run. */


INSERT INTO employee (Id,Name,Age,Address)
VALUES  (1, 'John Smith', 25,  '123 Main St'),
        (2, 'Sarah Johnson', 30,'456 Broadway'),
        (3, 'Michael Brown', 45,  '789 Main St'),
        (4, 'Jessica Davis', 28,  '321 Elm St');
