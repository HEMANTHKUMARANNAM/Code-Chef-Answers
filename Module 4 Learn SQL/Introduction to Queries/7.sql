-- Let us combine what we have learnt from our 'SELECT', 'DISTINCT' and 'WHERE' queries.

-- The Query written in the console is trying to do the following.

-- Where the origin of the flight is 'Mumbai'
-- Output the 'Distinct' names of 'Male' passengers
-- Debug this query to get the correct output!

-- Remember that the column details are as follows

-- Passenger_id
-- Passenger_name
-- Gender
-- Origin
-- Destination








-- ANSWER

/* Debug this query to get the correct output */

select DISTINCT passenger_name
from flights
where gender = 'Male'
and origin = 'Mumbai';
