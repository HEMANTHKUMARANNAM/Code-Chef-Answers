-- The Query written in the console is trying to insert data to the table employee.
-- Debug this query to output the entire table.

-- Your table is named 'employee' and has the following columns

-- Id (INT)
-- Name (TEXT),
-- Age (INT),
-- Address (TEXT)


-- ANSWER

/* The Query written in the console is trying to insert data to the table employee.
Debug this query to output the entire table */

INSERT INTO employee (Id,Name,Age,Address)
VALUES  (1, 'John Smith', 25,  '123 Main St'),
        (2, 'Sarah Johnson', 30,'456 Broadway');

SELECT * FROM employee; 