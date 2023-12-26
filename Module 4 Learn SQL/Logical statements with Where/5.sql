-- -- Let us now solve a practice problem which tests what we learnt in this sub-module - AND, OR & LIKE.

-- -- You need to write a query with the following conditions

-- -- Destination city end in 'o' AND
-- -- Origin city starts with 'M'
-- -- Expected Output
-- -- ┌──────────────┬────────────────┬────────┬────────┬─────────────┐
-- -- │ Passenger_id │ Passenger_name │ Gender │ Origin │ Destination │
-- -- ├──────────────┼────────────────┼────────┼────────┼─────────────┤
-- -- │ 10004        │ Anthony        │ Male   │ Mumbai │ Cairo       │
-- -- └──────────────┴────────────────┴────────┴────────┴─────────────┘








/* write a query with the following conditions
- Destination city end in 'o' AND
- Origin city starts with 'M' 
*/

select * from Flights
where Destination like '%o'
and Origin like 'M%'; 




