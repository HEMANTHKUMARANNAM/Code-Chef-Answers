-- Till now, we have joined tables by columns. Now let’s join the data by rows.
-- We use the concept of UNION to do that.
-- UNION helps us to place a table right on top of another table.
-- There are set of criteria to be followed while appending the tables:

-- The number of columns of the tables should be same.
-- The data type of the table should be of the same order of that of the first table.
-- Below is query to combine tables 'Mfg_Ind' and 'Mfg_Int'

--  SELECT *
--  FROM Mfg_Ind
--  UNION
--  SELECT *
--  FROM Mfg_Int;
-- Below mentioned are the tables 'Mfg_Ind' and 'Mfg_Int'

-- Table Mfg_Ind:

-- mfg_id	company
-- 1001	Mahindra
-- 1002	Tata
-- Table Mfg_Int:

-- Id	cmp_name
-- 5	Hyundai
-- 6	Suzuki
-- After executing the above query we get the below mentioned table:

-- mfg_id	company
-- 1001	Mahindra
-- 1002	Tata
-- 5	Hyundai
-- 6	Suzuki
-- Task
-- Write a query using union to stack the table 'Arts' over 'Science' and output the final table









-- ANSWER

/* Write a query using union to stack the table 'Arts' over 'Science' and output the final table */

SELECT *
FROM Arts
union
SELECT *
FROM Science;
