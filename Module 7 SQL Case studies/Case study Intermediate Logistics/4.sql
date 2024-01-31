-- Case study - Logistics
-- We want to categorise the Network lanes based on the total cost it takes to operate a 'Trailer' on a given lane. The cost categories are

-- 'High cost' if running_cost >= 1500
-- 'Medium cost' if running_cost between 1000 and 1500
-- 'Low cost' if running_cost < 1000
-- Task
-- Write a query to do the following

-- We need to output the following - 'connection_id', 'origin', 'destination', 'cost_category'.
-- 'cost_category' is the alias for the column which stores the values 'High cost', 'Medium cost', 'Low cost'. Remember this is decided purely based on the running_cost of truck_type - 'Trailer'
-- Cost of operating a truck is the alias - running_cost = distance x cost_per_distance.
-- Hint you will need to JOIN the tables 'Network' and 'Truck' and then apply relevant conditions
-- Hint you will need to use CASE / WHEN to identify the 'cost_category'
-- Expected output
-- ┌───────────────┬───────────────┬───────────────┬───────────────┐
-- │ connection_id │    origin     │  destination  │ cost_category │
-- ├───────────────┼───────────────┼───────────────┼───────────────┤
-- │ 4             │ New York      │ Chicago       │ Low cost      │
-- │ 8             │ Chicago       │ New York      │ Low cost      │
-- │ 12            │ New York      │ Los Angeles   │ High cost     │
-- │ 16            │ Los Angeles   │ New York      │ High cost     │
-- │ 20            │ New York      │ San Francisco │ High cost     │
-- │ 24            │ San Francisco │ New York      │ High cost     │
-- │ 28            │ Chicago       │ Los Angeles   │ Medium cost   │
-- │ 32            │ Los Angeles   │ Chicago       │ Medium cost   │
-- │ 36            │ Chicago       │ San Francisco │ High cost     │
-- │ 40            │ San Francisco │ Chicago       │ High cost     │
-- │ 44            │ Los Angeles   │ San Francisco │ Low cost      │
-- │ 48            │ San Francisco │ Los Angeles   │ Low cost      │
-- │ 52            │ San Francisco │ Seattle       │ Low cost      │
-- │ 56            │ Seattle       │ San Francisco │ Low cost      │
-- │ 60            │ Seattle       │ New York      │ High cost     │
-- │ 64            │ New York      │ Seattle       │ High cost     │
-- └───────────────┴───────────────┴───────────────┴───────────────┘
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


* Write a query to do the following
- We need to output the following - 'connection_id', 'origin', 'destination', 'cost_category'.  
- 'cost_category' is the alias for the column which stores the values 'High cost', 'Medium cost', 'Low cost'
- Cost of operating a truck is the alias - running_cost = distance x cost_per_distance. 
- **Hint** you will need to JOIN the tables 'Network' and 'Truck' and then apply relevant conditions
- **Hint** you will need to use CASE / WHEN to identify the 'cost_category' */


create TABLE data as
select * from network
join Truck
on network.Truck_id =Truck.Truck_id;


ALTER TABLE data
ADD running_cost float;

UPDATE data
SET running_cost = cost_per_distance * distance;


ALTER TABLE data
ADD cost_category TEXT default "High cost";

UPDATE data
SET cost_category = "Low cost"
where running_cost < 1000;

UPDATE data
SET cost_category = "Medium cost"
where running_cost >=1000 and running_cost <1500;


select max(connection_id) as connection_id,origin,destination,cost_category
from data
group by origin, destination
order by connection_id;


