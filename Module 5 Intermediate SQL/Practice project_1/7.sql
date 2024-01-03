-- Let us try and identify our 3 most revenue generating customers.

-- Task
-- Write a query which does the following

-- Identify the 3 highest value purchases from 'Purchase' using WITH and store them as 'top_purchase'
-- Join 'Customer' and 'Top_purchase' on the column 'Customer_id'
-- Output all entries in the joined table
-- Expected output
-- ┌─────────────┬───────────────┬─────────────┬─────────────┬──────────────┐
-- │ Customer_id │ Customer_Name │ Purchase_id │ Customer_id │ Purchase_Amt │
-- ├─────────────┼───────────────┼─────────────┼─────────────┼──────────────┤
-- │ 5           │ Michael Kim   │ 175         │ 5           │ 300          │
-- │ 2           │ Mary Johnson  │ 142         │ 2           │ 200          │
-- │ 1           │ John Smith    │ 121         │ 1           │ 100          │
-- └─────────────┴───────────────┴─────────────┴─────────────┴──────────────┘
-- Your database 'Customer' has the following columns

-- Customer_id (INT)
-- Customer_Name (VARCHAR)
-- Your database 'Purchase' has the following columns

-- Purchase_id (INT)
-- Customer_id (INT)
-- Purchase_Amt (INT)









-- ANSWER



/* Write a query to output a join table of 'Customer' and 'Purchase' containing only the details of 3 customers who has the highest purchased amount. */


select *
from customer
join Purchase
on customer.customer_id = Purchase.customer_id
order by Purchase_Amt DESC
limit 3;
