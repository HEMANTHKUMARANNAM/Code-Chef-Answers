-- The LIKE operator is used along with WHERE to filter the similar values.
-- Remember that '=' was used for exact match.

-- '%' is used with LIKE as a replacement for multiple letters.
-- The query below will give us the table.
-- select * from Flights
-- where origin like '%York%';

-- ┌──────────────┬────────────────┬────────┬──────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │  Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼──────────┼─────────────┤
-- │ 10006        │ Dia            │ Female │ New York │ Cairo       │
-- │ 10007        │ Jackson        │ Male   │ New York │ London      │
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘
-- '_' is used with LIKE as a replacement for single letters / characters.
-- The query below will give us the table.
-- select * from Flights
-- where passenger_id like '1000_';

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
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘
-- Task
-- Write a query that returns the rows which meet the following conditions

-- Passenger names that end with 'a'
-- Expected Output
-- ┌──────────────┬────────────────┬────────┬──────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │  Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼──────────┼─────────────┤
-- │ 10002        │ Riya           │ Female │ Mumbai   │ Delhi       │
-- │ 10006        │ Dia            │ Female │ New York │ Cairo       │
-- │ 10008        │ Dia            │ Female │ Beijing  │ Mumbai      │
-- │ 10009        │ Riya           │ Female │ Damascus │ Mumbai      │
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘









-- ANSWER



/* Write a query that returns the rows which meet the following conditions
- Passenger names that end with 'a' */


select * from Flights
where  Passenger_name like '%a';
