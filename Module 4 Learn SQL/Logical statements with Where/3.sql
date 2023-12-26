-- The OR clause is used along with WHERE to filter the table which meets any one of the given multiple conditions.

-- Check the following syntax - OR combines the two conditions.

-- select * from Flights
-- where origin = 'Mumbai'
-- and passenger_id BETWEEN 10001 AND 10007;
-- Any query containing OR will return a result if ANY of the conditions is TRUE.

-- Task
-- Now - write a query that returns the rows which meet the following conditions - Either Origin is Mumbai or the Destination is Mumbai

-- ┌──────────────┬────────────────┬────────┬──────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │  Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼──────────┼─────────────┤
-- │ 10001        │ Jackson        │ Male   │ Mumbai   │ New York    │
-- │ 10002        │ Riya           │ Female │ Mumbai   │ Delhi       │
-- │ 10004        │ Anthony        │ Male   │ Mumbai   │ Cairo       │
-- │ 10008        │ Dia            │ Female │ Beijing  │ Mumbai      │
-- │ 10009        │ Riya           │ Female │ Damascus │ Mumbai      │
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘








-- ANSWER



/*write a query that returns the rows which meet the following conditions
- Either Origin is Mumbai or the Destination is Mumbai */

select * from Flights
where origin = 'Mumbai'
or Destination = 'Mumbai' ;