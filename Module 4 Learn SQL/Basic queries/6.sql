-- Let us combine what we have learnt from our 'SELECT', 'DISTINCT' and 'WHERE' queries.

-- From the 'Flights' table - let us find the following

-- Where the origin of the flight is 'New York'
-- Output the passenger_name and gender
-- Expected Output
-- ┌────────────────┬────────┐
-- │ Passenger_name │ Gender │
-- ├────────────────┼────────┤
-- │ Dia            │ Female │
-- │ Jackson        │ Male   │
-- └────────────────┴────────┘
-- Remember that the column details are as follows

-- Passenger_id
-- Passenger_name
-- Gender
-- Origin
-- Destination








-- ANSWER


/* Write a query that does the following
- Where the origin of the flight is 'New York'
- Output the passenger_name and gender */

select Passenger_name, Gender
from Flights
WHERE Origin = 'New York';
