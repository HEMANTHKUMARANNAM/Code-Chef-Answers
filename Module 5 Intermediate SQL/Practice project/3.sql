-- You may have some registered customers who have not yet made a purchase.
-- Let us find out about them.

-- Your database 'Customer' has the following columns

-- Customer_id (INT)
-- Customer_Name (VARCHAR)
-- Customer_Age (INT)
-- Your database 'Purchase' has the following columns

-- Purchase_id (INT)
-- Customer_id (INT)
-- Purchase_amt (INT)
-- Last_purchase_month (VARCHAR)
-- Task
-- Write a query that does the following

-- Join the table 'Customer' and 'Purchase' using Customer_id as the common column in the table.
-- Output the joined table
-- The output should include the list of customers who haven't made any purchases yet.
-- Expected output

-- Customer_id	Customer_Name	Customer_Age	Purchase_id	Customer_id	Purchase_amt	Last_purchase_month
-- 1	John	15	1	1	100	May
-- 2	Sara	16	NULL	NULL	NULL	NULL
-- 3	Adam	17	36	3	300	October
-- 4	Emily	15	2	4	50	March
-- 5	Tom	16	NULL	NULL	NULL	NULL
-- 6	Amy	17	3	6	200	January
-- 7	Mark	15	NULL	NULL	NULL	NULL
-- 8	Olivia	16	NULL	NULL	NULL	NULL
-- 9	David	17	49	9	225	July
-- 10	Emma	15	10	10	250	April



/* Write a query to join the table 'Customer' and 'Purchase' using Customer_id as the common column in the table.
Output the joined table including the list of customers who hasn't made any purchases yet. */


select * 
FROM Customer
LEFT JOIN Purchase
ON Customer.Customer_id = Purchase.Customer_id;