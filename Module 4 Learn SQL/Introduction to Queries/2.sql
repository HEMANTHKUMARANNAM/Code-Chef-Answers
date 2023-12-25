-- As you saw in the problem earlier, the Flights table had the following information in columns

-- Passenger_id with datatype INT
-- Passenger_name with datatype VARCHAR
-- Gender with datatype VARCHAR
-- Origin with datatype VARCHAR
-- Destination with datatype VARCHAR
-- To view data entries in specific columns of a table, the following syntax is used

--     select column_1, column_2
--     from Flights;
-- To view ALL rows of a table, the following syntax is used

--     select *
--     from Flights;
-- Task
-- Write a query which does the following

-- Let us fetch the entry specifically from 2 columns - 'Passenger_name' and 'Gender'.
-- Expected output
-- ┌────────────────┬────────┐
-- │ Passenger_name │ Gender │
-- ├────────────────┼────────┤
-- │ Jackson        │ Male   │
-- │ Riya           │ Female │
-- │ Roy            │ Male   │
-- │ Anthony        │ Male   │
-- │ Salim          │ Male   │
-- │ Dia            │ Female │
-- │ Jackson        │ Male   │
-- │ Dia            │ Female │
-- │ Riya           │ Female │
-- │ Betty          │ Female │
-- └────────────────┴────────┘
-- Code it out in the IDE.








-- ANSWER

/* Write a query which does the following
- Fetch the entry specifically from 2 columns - 'Passenger_name' and 'Gender' */


select Passenger_name, Gender
from Flights;













--OUTPUT

-- ┌──────────────┬────────────────┬────────┬──────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │  Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼──────────┼─────────────┤
-- │ 10001        │ Jackson        │ Male   │ Mumbai   │ New York    │
-- │ 10002        │ Riya           │ Female │ Mumbai   │ Delhi       │
-- │ 10003        │ Roy            │ Male   │ London   │ Delhi       │
-- │ 10004        │ Anthony        │ Male   │ Mumbai   │ Cairo       │
-- │ 10005        │ Salim          │ Male   │ Ohio     │ New York    │
-- │ 10006        │ Dia            │ Female │ New York │ Cairo       │
-- │ 10007        │ Jackson        │ Male   │ New York │ London      │
-- │ 10008        │ Dia            │ Female │ Beijing  │ Mumbai      │
-- │ 10009        │ Riya           │ Female │ Damascus │ Mumbai      │
-- │ 10010        │ Betty          │ Female │ Beijing  │ Cairo       │
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘
