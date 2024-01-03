-- Write a query to do the following

-- Find the sum of prices of the dishes fall that under the category 'Non veg' for each cuisine.
-- The output table should have the types of Cuisines and the sum of prices of the 'Non veg' dishes(mentioned under the column 'category') for each cuisine. Alias the sum function as 'Non_Veg_Price'.
-- Expected output
-- ┌──────────┬───────────────┐
-- │ cuisine  │ Non_Veg_Price │
-- ├──────────┼───────────────┤
-- │ American │ 0             │
-- │ Italian  │ 80.95         │
-- │ Thai     │ 0             │
-- └──────────┴───────────────┘
-- Your table 'Orders' has the following fields:

-- order_id INT PRIMARY KEY,
-- item_name VARCHAR(255),
-- cuisine VARCHAR(255) ,
-- category VARCHAR(255) ,
-- price DECIMAL(10,2),
-- status VARCHAR(255)


/* Write a query to find the sum of prices of the dishes fall under the category 'Non veg' across the Cuisine.
The output table should have the types of Cuisines and the sum of prices of the 'Non veg' dishes(mentioned under the column 'category') in each of them. Alias the sum function as 'Non_Veg_Price' */

SELECT cuisine, 
sum(CASE WHEN category = 'Non veg' THEN price ELSE 0 END) as Non_Veg_Price 
FROM Orders
GROUP BY cuisine;

