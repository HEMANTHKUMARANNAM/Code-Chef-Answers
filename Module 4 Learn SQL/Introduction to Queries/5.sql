-- The BETWEEN clause is used along with WHERE to filter the table based on 2 values.

-- The values can be text
-- select * from Flights
-- where passenger_name BETWEEN 'A' AND 'D';
-- The values can be integers
-- select * from Flights
-- where passenger_id BETWEEN 10001 AND 10007;
-- The values can be dates as well.
-- Task
-- Let us try the 1st example - Write a query to do the following

-- Output all entries from the table
-- where passenger_name between 'A' and 'D'
-- Expected Output
-- ┌──────────────┬────────────────┬────────┬─────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │ Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼─────────┼─────────────┤
-- │ 10004        │ Anthony        │ Male   │ Mumbai  │ Cairo       │
-- │ 10010        │ Betty          │ Female │ Beijing │ Cairo       │
-- └──────────────┴────────────────┴────────┴─────────┴─────────────┘









-- ANSWER


/* Write a query to do the following
- Output all entries from the table
- Where passenger_name between 'A' and 'D' */

select * from Flights
where passenger_name BETWEEN 'A' AND 'D';
