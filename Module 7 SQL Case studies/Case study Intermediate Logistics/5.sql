-- Case study - Logistics
-- Let us also classify the lane_ids based on the revenue generated. The revenue categories are

-- 'High revenue' if revenue_cat >= 25000
-- 'Medium revenue' if revenue_cat between 18000 and 25000
-- 'Low revenue' if revenue_cat < 18000
-- Task
-- Write a query to do the following

-- We need to output the following - 'lane_id', 'origin', 'destination', 'revenue', 'revenue_cat'.
-- 'revenue_cat' is the alias for the column which stores the values 'High revenue', 'Medium revenue', 'Low revenue'.
-- Hint you will need to use CASE / WHEN on the table 'Revenue' and apply relevant conditions
-- Expected output
-- ┌─────────┬───────────────┬───────────────┬─────────┬────────────────┐
-- │ lane_id │    origin     │  destination  │ revenue │  revenue_cat   │
-- ├─────────┼───────────────┼───────────────┼─────────┼────────────────┤
-- │ 1       │ New York      │ Chicago       │ 25000   │ High revenue   │
-- │ 2       │ New York      │ Los Angeles   │ 35000   │ High revenue   │
-- │ 3       │ New York      │ Seattle       │ 18000   │ Medium revenue │
-- │ 4       │ New York      │ Miami         │ 22000   │ Medium revenue │
-- │ 5       │ New York      │ San Francisco │ 28000   │ High revenue   │
-- │ 6       │ Chicago       │ New York      │ 20000   │ Medium revenue │
-- │ 7       │ Chicago       │ Los Angeles   │ 30000   │ High revenue   │
-- │ 8       │ Chicago       │ Seattle       │ 15000   │ Low revenue    │
-- │ 9       │ Chicago       │ Miami         │ 17000   │ Low revenue    │
-- │ 10      │ Chicago       │ San Francisco │ 22000   │ Medium revenue │
-- │ 11      │ Los Angeles   │ New York      │ 32000   │ High revenue   │
-- │ 12      │ Los Angeles   │ Chicago       │ 28000   │ High revenue   │
-- │ 13      │ Los Angeles   │ Seattle       │ 21000   │ Medium revenue │
-- │ 14      │ Los Angeles   │ Miami         │ 25000   │ High revenue   │
-- │ 15      │ Los Angeles   │ San Francisco │ 29000   │ High revenue   │
-- │ 16      │ Seattle       │ New York      │ 17000   │ Low revenue    │
-- │ 17      │ Seattle       │ Chicago       │ 14000   │ Low revenue    │
-- │ 18      │ Seattle       │ Los Angeles   │ 19000   │ Medium revenue │
-- │ 19      │ Seattle       │ Miami         │ 12000   │ Low revenue    │
-- │ 20      │ Seattle       │ San Francisco │ 16000   │ Low revenue    │
-- │ 21      │ Miami         │ New York      │ 19000   │ Medium revenue │
-- │ 22      │ Miami         │ Chicago       │ 16000   │ Low revenue    │
-- │ 23      │ Miami         │ Los Angeles   │ 23000   │ Medium revenue │
-- │ 24      │ Miami         │ Seattle       │ 11000   │ Low revenue    │
-- │ 25      │ Miami         │ San Francisco │ 20000   │ Medium revenue │
-- │ 26      │ San Francisco │ New York      │ 25000   │ High revenue   │
-- │ 27      │ San Francisco │ Chicago       │ 22000   │ Medium revenue │
-- │ 28      │ San Francisco │ Los Angeles   │ 29000   │ High revenue   │
-- │ 29      │ San Francisco │ Seattle       │ 16000   │ Low revenue    │
-- │ 30      │ San Francisco │ Miami         │ 20000   │ Medium revenue │
-- └─────────┴───────────────┴───────────────┴─────────┴────────────────┘
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
- We need to output the following - 'lane_id', 'origin', 'destination', 'revenue', 'revenue_cat'.  
- 'revenue_cat' is the alias for the column which stores the values 'High revenue', 'Medium revenue', 'Low revenue'. 
- **Hint** you will need to use SUBQUERIES on the table 'Revenue' and apply relevant conditions */



ALTER TABLE revenue
ADD revenue_cat TEXT default "High revenue";

UPDATE revenue
SET revenue_cat = "Low revenue"
where revenue < 18000;

UPDATE revenue
SET revenue_cat = "Medium revenue"
where revenue >=18000 and revenue <25000;


select lane_id,origin,destination,revenue,revenue_cat
from revenue
group by lane_id
order by lane_id;
