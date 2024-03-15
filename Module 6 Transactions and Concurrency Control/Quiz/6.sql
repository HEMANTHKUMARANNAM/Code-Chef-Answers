-- Problem 6
-- Consider the following transaction involving two bank accounts x and y.

-- read(x);  
-- x := x – 50;  
-- write(x);  
-- read(y);  
-- y := y + 50;  
-- write(y) 



Correct Answer:

Consistency
Explanation:
Transaction transfers INR 50 from account A (x-50) to account B (y+50).

The sum of A and B is unchanged by the execution of the transaction.

In general, consistency requirements include:
- Explicitly specified integrity constraints such as primary keys and foreign keys.

- Implicit integrity constraints- e.g. sum of balances of all accounts, minus sum of loan amounts must equal value of cash­ in­ hand.

- A transaction must see a consistent database.

- During transaction execution the database may be temporarily inconsistent.

- When the transaction completes successfully the database must be consistent.

- Erroneous transaction logic can lead to inconsistency