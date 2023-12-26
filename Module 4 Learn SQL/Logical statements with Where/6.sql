-- Let us now debug a query which tests what we learnt in this sub-module - AND, OR & LIKE.

-- You are given a query which is trying to output entries that meets both the conditions

-- Passenger gender - Female AND
-- Flight destination - Delhi
-- Expected Output
-- ┌──────────────┬────────────────┬────────┬────────┬─────────────┐
-- │ Passenger_id │ Passenger_name │ Gender │ Origin │ Destination │
-- ├──────────────┼────────────────┼────────┼────────┼─────────────┤
-- │ 10004        │ Anthony        │ Male   │ Mumbai │ Cairo       │
-- └──────────────┴────────────────┴────────┴────────┴─────────────┘
-- However - the query is giving an incorrect output. Fix the query to solve the problem.







/* Debug this query to meet the following conditons
- Passenger gender - Female AND
- Flight destination - Delhi
*/

select * from flights
where gender like 'Female'
and destination like 'Delhi';