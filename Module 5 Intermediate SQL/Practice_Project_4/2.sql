-- Write a query to group the dishes based on the price as:

-- High - If Price more than 18
-- Medium - If Price of the dishes is between 10 and 18
-- Low - If the price is less than 10.
-- The final output table should have the following 2 columns

-- the price group aliased as 'Pay_Category' as above
-- the count of the dishes falling in the respective category aliased as 'dish_count'
-- Expected output
-- ┌──────────────┬────────────┐
-- │ Pay_Category │ Dish_count │
-- ├──────────────┼────────────┤
-- │ High         │ 4          │
-- │ Low          │ 2          │
-- │ Medium       │ 7          │
-- └──────────────┴────────────┘
-- Your table 'Orders' has the following fields:

-- order_id INT PRIMARY KEY,
-- item_name VARCHAR(255),
-- cuisine VARCHAR(255) ,
-- category VARCHAR(255) ,
-- price DECIMAL(10,2),
-- status VARCHAR(255)



/* The final output table should have the price grouped(Aliased as Pay_Category) as above and the count of the dishes falling in the respective category. */

select  
CASE
    when price < 10 THEN 'Low'
    WHEN price between 10 AND 18 THEN 'Medium'
    WHEN price > 18 THEN 'High'
    else 'NA'
    
END AS 'Pay_Category',
COUNT(*)  AS 'Dish_count'
FROM Orders
GROUP BY 1;
