-- Re-arrange the query to find the number of orders that fall under the category 'Veg' across the Cuisine.
-- The output table should have the types of Cuisines and the count of Veg dishes in them.

-- Your table 'Orders' has the following fields:

-- order_id INT PRIMARY KEY,
-- item_name VARCHAR(255),
-- cuisine VARCHAR(255) ,
-- category VARCHAR(255) ,
-- price DECIMAL(10,2),
-- status VARCHAR(255)
-- Did you like the problem?



SELECT cuisine, 
COUNT(CASE WHEN category = 'Veg' THEN 1 ELSE NULL END)
FROM Orders
GROUP BY cuisine;
