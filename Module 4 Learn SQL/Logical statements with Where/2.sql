-- The AND clause is used along with WHERE to filter the table based on 2 separate conditions.

-- Check the following example - AND combines the two conditions.

-- select * from Flights
-- where origin = 'Mumbai'
-- and passenger_id BETWEEN 10001 AND 10007;
-- Any query containing AND will return a result ONLY if all conditions are TRUE.

-- Task
-- Now - write a query that returns the rows which meet the following conditions

-- Gender - Female
-- Destination - Cairo
-- Expected Output
-- ┌──────────────┬────────────────┬────────┬──────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │  Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼──────────┼─────────────┤
-- │ 10006        │ Dia            │ Female │ New York │ Cairo       │
-- │ 10010        │ Betty          │ Female │ Beijing  │ Cairo       │
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘






-- ANSWER



/* write a query below that returns the rows which meet the following conditions
- Gender - Female
- Destination - Cairo */


select * from Flights
where Gender = 'Female'
and Destination = 'Cairo'; 



