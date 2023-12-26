-- Some rows / columns in databases can be empty - these values are treated as NULL.
-- IS NULL and IS NOT NULL are used to filter for such entries.
-- Review the sample syntax below

-- select * from Flights
-- ORDER BY passenger_name
-- LIMIT 3;
-- Task
-- Write a query which meets the following conditions

-- Passenger_id is blank or null
-- Order by passenger_name
-- Expected output
-- ┌──────────────┬────────────────┬────────┬─────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │ Origin  │ Destination │
-- ├──────────────┼────────────────┼────────┼─────────┼─────────────┤
-- │ NULL         │ Dia            │ Female │ Beijing │ Mumbai      │
-- │ NULL         │ Roy            │ Male   │ London  │ Delhi       │
-- │ NULL         │ Salim          │ Male   │ Ohio    │ New York    │
-- └──────────────┴────────────────┴────────┴─────────┴─────────────┘










-- ANSWER



/* Write a query which meets the following conditions
- Passenger_id is blank or null
- Order by name
*/

select * from Flights
where Passenger_id is NULL
Order by Passenger_name;





