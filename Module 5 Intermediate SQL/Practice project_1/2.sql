-- A Supermarket database will have multiple tables to store data, one such is the table regarding each 'purchase'.

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
-- Write a query which does the following

-- Join the table 'Customer' and 'Purchase' using Customer_id as the common column in the table.
-- Output all entries from the joined table.
-- Expected output

-- Customer_id	Customer_Name	Customer_Age	Purchase_id	Customer_id	Purchase_amt	Last_purchase_month
-- 1	John	15	1	1	100	May
-- 4	Emily	15	2	4	50	March
-- 6	Amy	17	3	6	200	January
-- 3	Adam	17	36	3	300	October
-- 9	David	17	49	9	225	July
-- 10	Emma	15	10	10	250	April








-- ANSWER

/* Write a query to join the table 'Customer' and 'Purchase' using Customer_id as the common column in the table.
Output the joined table. */


select * 
FROM Customer
JOIN Purchase
ON Customer.Customer_id = Purchase.Customer_id;