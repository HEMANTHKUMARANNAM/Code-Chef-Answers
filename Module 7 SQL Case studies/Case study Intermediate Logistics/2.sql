-- Case study - Logistics
-- Lets begin our analysis.
-- We want to find the various cost options to go from 'New York' to 'Chicago'.

-- Task
-- Write a query to do the following

-- We need to output the following - 'connection_id', 'origin', 'destination', 'truck_type' and 'running_cost'.
-- Cost of operating a truck is the alias - running_cost = distance x cost_per_distance.
-- Hint you will need to JOIN the tables 'Network' and 'Truck' and then apply relevant conditions
-- Expected output
-- ┌───────────────┬──────────┬─────────────┬────────────┬──────────────┐
-- │ connection_id │  origin  │ destination │ truck_type │ running_cost │
-- ├───────────────┼──────────┼─────────────┼────────────┼──────────────┤
-- │ 1             │ New York │ Chicago     │ Small      │ 960.0        │
-- │ 2             │ New York │ Chicago     │ Medium     │ 720.0        │
-- │ 3             │ New York │ Chicago     │ Large      │ 640.0        │
-- │ 4             │ New York │ Chicago     │ Trailer    │ 560.0        │
-- └───────────────┴──────────┴─────────────┴────────────┴──────────────┘
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
- We need to output the following - 'connection_id', 'origin', 'destination', 'truck_type' and 'running_cost'.  
- Cost of operating a truck is the alias - running_cost = distance x cost_per_distance. 
- **Hint** you will need to JOIN the tables 'Network' and 'Truck' and then apply relevant conditions */


create TABLE data as
select * from network
join Truck
on network.Truck_id =Truck.Truck_id;


ALTER TABLE data
ADD running_cost float;

UPDATE data
SET running_cost = cost_per_distance * distance;


select connection_id,origin,destination,truck_type,running_cost 
from data
limit 4;

