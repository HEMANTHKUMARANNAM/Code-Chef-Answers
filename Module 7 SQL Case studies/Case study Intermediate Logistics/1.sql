-- Case study - Logistics
-- Case study:
-- You have your own Data analytics consultancy and one of your clients is a Trucking and Logistics company looking for help with network optimisation.
-- You understood how their operations network is designed in different legs - First Mile, Middle Mile and Last Mile and visited their operations centers to get a first hand feel of their process.

-- You are now ready to analyse data. Your team has provided you the database containing the following tables

-- 'Network'
-- Contains the truck / line-haul connections between various origins and destinations
-- Columns
-- connection_id - unique id assigned to each connection. A connection is defined by the truck size running on a specific origin / destination pair
-- origin - Origin city for the connection
-- destination - Destination city for the connection
-- truck_id - specific truck type
-- distance - travel distance for the truck
-- 'Truck'
-- Contains details about each truck
-- Columns
-- truck_id - unique for each truck
-- cost_per_distance - cost of operating the truck per unit distance
-- truck_type - type of truck based on the size of the truck
-- 'Revenue'
-- Contains details of revenue earned on each origin / destination combination
-- Columns
-- lane_id - unique lane id for every origin - destination pair. Lane_id is independent of the size of the truck - it just depends on the origin - destination.
-- origin - Origin city for the connection
-- destination - Destination city for the connection
-- revenue - total revenue for the lane
-- Task
-- Write a query to check 3 rows from each of 'Network', 'Truck' and 'Revenue' tables to check the entries.




/* Write a query to check 3 rows from each of 'Network', 'Truck' and 'Revenue' tables to check the entries. */


SELECT * FROM Network
limit 3;

SELECT * FROM Truck
limit 3;

SELECT * FROM Revenue
limit 3;






-- ┌───────────────┬──────────┬─────────────┬──────────┬──────────┐
-- │ connection_id │  origin  │ destination │ truck_id │ distance │
-- ├───────────────┼──────────┼─────────────┼──────────┼──────────┤
-- │ 1             │ New York │ Chicago     │ Truck1   │ 800      │
-- │ 2             │ New York │ Chicago     │ Truck2   │ 800      │
-- │ 3             │ New York │ Chicago     │ Truck3   │ 800      │
-- └───────────────┴──────────┴─────────────┴──────────┴──────────┘
-- ┌──────────┬───────────────────┬────────────┐
-- │ truck_id │ cost_per_distance │ truck_type │
-- ├──────────┼───────────────────┼────────────┤
-- │ Truck1   │ 1.2               │ Small      │
-- │ Truck2   │ 0.9               │ Medium     │
-- │ Truck3   │ 0.8               │ Large      │
-- └──────────┴───────────────────┴────────────┘
-- ┌─────────┬──────────┬─────────────┬─────────┐
-- │ lane_id │  origin  │ destination │ revenue │
-- ├─────────┼──────────┼─────────────┼─────────┤
-- │ 1       │ New York │ Chicago     │ 25000   │
-- │ 2       │ New York │ Los Angeles │ 35000   │
-- │ 3       │ New York │ Seattle     │ 18000   │
-- └─────────┴──────────┴─────────────┴─────────┘





