-- ORDER BY is used to sort the results of the query in an ascending or descending order.

-- By default, the following syntax returns the result sorted in an ascending order
-- The ORDER BY clause should be written after the SELECT, FROM, WHERE, GROUP BY, and HAVING clauses, but before the LIMIT clause (if one is used).
-- select * from Flights
-- ORDER BY passenger_name;

-- Output
-- ┌──────────────┬────────────────┬────────┬──────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │  Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼──────────┼─────────────┤
-- │ 10004        │ Anthony        │ Male   │ Mumbai   │ Cairo       │
-- │ 10010        │ Betty          │ Female │ Beijing  │ Cairo       │
-- │ 10006        │ Dia            │ Female │ New York │ Cairo       │
-- │ 10008        │ Dia            │ Female │ Beijing  │ Mumbai      │
-- │ 10001        │ Jackson        │ Male   │ Mumbai   │ New York    │
-- │ 10007        │ Jackson        │ Male   │ New York │ London      │
-- │ 10002        │ Riya           │ Female │ Mumbai   │ Delhi       │
-- │ 10009        │ Riya           │ Female │ Damascus │ Mumbai      │
-- │ 10003        │ Roy            │ Male   │ London   │ Delhi       │
-- │ 10005        │ Salim          │ Male   │ Ohio     │ New York    │
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘
-- To sort the results in a descending order, use the following syntax
-- select * from Flights
-- ORDER BY passenger_name DESC;
-- Task
-- You need to output entries from the table which meet the following conditions

-- Destination is 'Cairo'
-- Entries are ordered by passenger_name in a descending order
-- Expected Output
-- ┌──────────────┬────────────────┬────────┬──────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │  Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼──────────┼─────────────┤
-- │ 10006        │ Dia            │ Female │ New York │ Cairo       │
-- │ 10010        │ Betty          │ Female │ Beijing  │ Cairo       │
-- │ 10004        │ Anthony        │ Male   │ Mumbai   │ Cairo       │
-- └──────────────┴────────────────┴────────┴──────────┴─────────────┘










-- ANSWER




/* Write a query based on the following conditions 
Destination is 'Cairo'
Entries are ordered by passenger_name in a descending order
*/


select * from Flights
where Destination = 'Cairo'
ORDER BY passenger_name DESC;
