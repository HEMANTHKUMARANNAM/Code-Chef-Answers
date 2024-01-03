-- Welcome to the Project which will help you practice everything that you learnt about Set Operations.

-- Imagine you are hired by 'XYZ Pvt Ltd' as their data analyst. Your initial task is to assist the HR team to help them get a clarity on their employee data base.

-- Task
-- Write a query to output the details of employees in the table 'employee'. Limit to 5 rows.

-- Expected output
-- ┌────────┬───────────────┬────────────┬───────────────────────────┐
-- │ emp_id │   emp_name    │ department │          mail_id          │
-- ├────────┼───────────────┼────────────┼───────────────────────────┤
-- │ 1      │ John Smith    │ Sales      │ john.smith@company.com    │
-- │ 2      │ Sarah Johnson │ Marketing  │ sarah.johnson@company.com │
-- │ 3      │ Mark Davis    │ Finance    │ mark.davis@company.com    │
-- │ 4      │ Lisa Brown    │ Sales      │ lisa.brown@company.com    │
-- │ 5      │ Kevin Lee     │ IT         │ kevin.lee@company.com     │
-- └────────┴───────────────┴────────────┴───────────────────────────┘


/* Write a query to output the details of employees in the table 'employee'. Limit to 5 rows. */

select * 
from employee
limit 5;