-- In the previous problem we've used 'CASE' to add a condition to find the sum.
-- Aggregates can also be used to find the ratios or percentage using a combination.

-- Below is a query to find what percentage of the organization's total payout is paid as a salary to the employees who has an experience more than 3 years , from table 'employee':

--        SELECT Department,
--        (100*(SUM(CASE WHEN Exp >3 THEN Salary ELSE 0 END))/SUM(Salary)) as High_Salary_percentage 
--        FROM employee
--        GROUP BY 1;
-- In the above query, the CASE statement is used to check if the Exp column value is greater than 3.
-- If the condition is true, the Salary of the employee is added to the sum; otherwise, 0 is added.
-- The first SUM function then calculates the sum of all the salaries that meet the condition.
-- And, second SUM calculates the total salary across all employees.
-- Once both the SUM's are calculated we divide them and multiply by 100 to get the percentage.
-- The resulting percentage is given an alias of High_Salary_percentage.
-- Task
-- Write a query to find the percentage of fee paid by the students, aged above 20 to the total fee by all the students across department.
-- Alias the resulting percentage column as Senior_Fee_Percentage.
-- Output the columns 'Department' and 'Senior_Fee_Percentage'.

-- Expected output
-- ┌────────────┬───────────────────────┐
-- │ Department │ Senior_Fee_Percentage │
-- ├────────────┼───────────────────────┤
-- │ English    │ 75                    │
-- │ History    │ 32                    │
-- │ Math       │ 48                    │
-- │ Science    │ 51                    │
-- └────────────┴───────────────────────┘
-- Your table 'student' has the following columns:

-- St_id
-- St_name
-- Fee
-- Department
-- Age


/* Write a query to find the percentage of fee paid by the students, aged above 20  to the total fee by all the students across department.\
Alias the resulting percentage column as Senior_Fee_Percentage*/

SELECT Department,
  (100*(SUM(CASE WHEN age >20 THEN fee ELSE 0 END))/SUM(fee)) as  Senior_Fee_Percentage 
  FROM student
  GROUP BY Department;
