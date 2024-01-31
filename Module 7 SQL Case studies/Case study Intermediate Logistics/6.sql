-- Case study - Logistics
-- Let us now look at the lane_id wise profitability for the truck id is 'Truck2'

-- Task
-- Write a query to do the following

-- We need to output the following - 'lane_id', 'origin', 'destination', and compute 'profit'
-- Order by decreasing 'profitability'
-- 'profit' is the alias for the column which stores the values 'Revenue' - 'running_cost'
-- 'running_cost' is computed as (cost_per_distance x distance)
-- Hint: you will need to use join all the tables - 'Revenue', 'Truck' and 'Network' and apply relevant conditions
-- Hint: This has to be computed only for the truck_id 'Truck2'
-- Expected output
-- ┌─────────┬───────────────┬───────────────┬─────────┐
-- │ lane_id │    origin     │  destination  │ profit  │
-- ├─────────┼───────────────┼───────────────┼─────────┤
-- │ 2       │ New York      │ Los Angeles   │ 32300.0 │
-- │ 11      │ Los Angeles   │ New York      │ 29300.0 │
-- │ 15      │ Los Angeles   │ San Francisco │ 28640.0 │
-- │ 28      │ San Francisco │ Los Angeles   │ 28640.0 │
-- │ 7       │ Chicago       │ Los Angeles   │ 28200.0 │
-- │ 12      │ Los Angeles   │ Chicago       │ 26200.0 │
-- │ 5       │ New York      │ San Francisco │ 25480.0 │
-- │ 1       │ New York      │ Chicago       │ 24280.0 │
-- │ 26      │ San Francisco │ New York      │ 22480.0 │
-- │ 10      │ Chicago       │ San Francisco │ 19660.0 │
-- │ 27      │ San Francisco │ Chicago       │ 19660.0 │
-- │ 6       │ Chicago       │ New York      │ 19280.0 │
-- │ 3       │ New York      │ Seattle       │ 15300.0 │
-- │ 29      │ San Francisco │ Seattle       │ 15280.0 │
-- │ 20      │ Seattle       │ San Francisco │ 15280.0 │
-- │ 16      │ Seattle       │ New York      │ 14300.0 │
-- └─────────┴───────────────┴───────────────┴─────────┘
-- Table formats
-- Network

-- connection_id
-- origin
-- destination
-- truck_id
-- distance
-- Truck

-- truck_id
-- cost_per_distance
-- truck_type
-- Revenue

-- lane_id
-- origin
-- destination
-- revenue




/* Write a query to do the following
- We need to output the following - 'lane_id', 'origin', 'destination', and compute 'profit' 
- Order by decreasing 'profitability' 
- 'profit' is the alias for the column which stores the values 'Revenue' - 'running_cost'
- 'running_cost' is computed as (cost_per_distance x distance)
- **Hint:** you will need to use join all the tables - 'Revenue', 'Truck' and 'Network' and apply relevant conditions
- **Hint:** This has to be computed only for the truck_type 'medium' */


create TABLE data as
select * from network
join Truck
on network.Truck_id =Truck.Truck_id;


ALTER TABLE data
ADD running_cost float;

UPDATE data
SET running_cost = cost_per_distance * distance;



create TABLE full_table as
select * from data
inner join Revenue
on data.origin = Revenue.origin and data.destination = Revenue.destination;


ALTER TABLE full_table
ADD profit float;


UPDATE full_table
SET profit = Revenue - running_cost;


select lane_id,origin,destination,AVG(profit) as profit
from full_table
group by origin,destination
Order by profit DESC;