-- Write a query to do the following

-- Find the dishes which cost more than the average cost of all the dishes at the restaurant
-- You need to output f_name, f_cost, f_type for such dishes
-- Hint: You need to use a subquery on the table 'food'
-- Expected output
-- ┌──────────────────┬────────┬──────────┐
-- │      f_name      │ f_cost │  f_type  │
-- ├──────────────────┼────────┼──────────┤
-- │ Sushi            │ 20     │ Japanese │
-- │ Tandoori Chicken │ 15     │ Indian   │
-- │ Beef Stroganoff  │ 18     │ Russian  │
-- │ Paella           │ 25     │ Spanish  │
-- │ Moussaka         │ 16     │ Greek    │
-- └──────────────────┴────────┴──────────┘
-- Table Format
-- Table 'food' has the following columns:

-- f_id (int)
-- f_name (text)
-- f_cost (int)
-- f_type (int).
-- Table 'ratings' has the following columns:

-- f_id (int)
-- f_rating (text).





/* Write a query to find which cuisine type has the best ratings for dishes that cost more than the average cost of food overall. Your output should have the column 'f_type' with the name of the cusine as per the condition.*/

SELECT f_name, f_cost, f_type
FROM food
WHERE f_cost > (SELECT AVG(f_cost) FROM food);


