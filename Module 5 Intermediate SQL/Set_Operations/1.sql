-- In the module on Multiple Tables we have learned that the UNION operations are done to stack a table or a column over the other.
-- But UNION operation doesn't entertain duplicates. i.e. while combining two tables using UNION, the duplicate entries will be removed and the final output will have unique data.
-- The above concern can be solved using the concept of UNION ALL.
-- When two tables/columns are combined using UNION ALL, all the data will be combined and added to the resulting table, including the duplicates.

-- Below is the format for the same:

--      SELECT * FROM table_1
--      UNION ALL
--      SELECT * FROM table_2;
-- Note: table_1 and table_2 should necessarily have the same count of columns



Correct Answer:

UNION combines and eliminates duplicates from the result sets, while UNION ALL combines all rows without eliminating duplicates.