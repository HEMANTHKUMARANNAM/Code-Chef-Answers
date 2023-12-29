-- You are given a table employee (mentioned below).

-- ┌─────────────┬────────────────┬────────────┬────────────┐
-- │ Employee_id │ Employee_Name  │ Department │ Hourly_Pay │
-- ├─────────────┼────────────────┼────────────┼────────────┤
-- │ 1           │ Kayla Thompson │ Sales      │ 44         │
-- │ 2           │ Ethan Chen     │ Operations │ 26         │
-- │ 3           │ Julia Lee      │ Hr         │ 66         │
-- │ 4           │ Marcus Garcia  │ Product    │ 34         │
-- │ 5           │ Samantha Park  │ Operations │ 43         │
-- │ 6           │ Brandon Kim    │ Operations │ 28         │
-- │ 7           │ Olivia Nguyen  │ Sales      │ 30         │
-- │ 8           │ Dylan Patel    │ Operations │ 35         │
-- │ 9           │ Chloe Davis    │ Hr         │ 31         │
-- │ 10          │ Brandon Adams  │ Product    │ 43         │
-- └─────────────┴────────────────┴────────────┴────────────┘
-- Task
-- Write 3 separate queries to output the entries for the following:

-- Count the number of employees in the department 'Sales'.
-- Rename the column header as 'count_sales'
-- Maximum Hourly pay for the department 'Operations'.
-- Rename the column header as 'ops_max_pay'
-- Minimum Hourly pay for the department 'Operations'.
-- Rename the column header as 'ops_min_pay'
-- Expected output
-- ┌─────────────┐
-- │ count_sales │
-- ├─────────────┤
-- │ 2           │
-- └─────────────┘
-- ┌─────────────┐
-- │ ops_max_pay │
-- ├─────────────┤
-- │ 43          │
-- └─────────────┘
-- ┌─────────────┐
-- │ ops_min_pay │
-- ├─────────────┤
-- │ 26          │
-- └─────────────┘


-- ANSWER


SELECT COUNT(*) AS count_sales
FROM employee
WHERE department = 'Sales';

SELECT MAX(Hourly_pay) AS ops_max_pay
FROM employee
WHERE department = 'Operations';

SELECT MIN(Hourly_pay) AS OPS_min_pay
FROM employee
WHERE department = 'Operations';



