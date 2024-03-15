-- ACID Properties in DBMS
-- ACID properties play a vital role in ensuring the reliability and integrity of transactions. ACID stands for Atomicity, Consistency, Isolation, and Durability—let's explore each one.

-- 1. Atomicity:

-- Think of atomicity as an all-or-nothing principle. It ensures that a transaction is treated as a single, indivisible unit. If any part of a transaction fails, the entire thing is rolled back, leaving the database unchanged. It's like a light switch—either the light is on, or it's off.

-- 2. Consistency:

-- Consistency ensures that a transaction takes the database from one valid state to another. It guarantees that certain conditions are met before and after the transaction. If a transaction doesn't fulfill these conditions, it's rolled back, keeping the database consistent. Imagine a recipe—you follow each step to create a consistent result.

-- 3. Isolation:

-- Isolation ensures that transactions can run concurrently without interfering with each other. It's like giving each transaction its own sandbox to play in. While multiple transactions are being executed, each one is isolated from the effects of others until it's committed. This prevents "dirty reads" or other inconsistencies.

-- 4. Durability:

-- Durability is all about persistence. Once a transaction is committed, its changes are permanent and survive even in the face of system crashes or power failures. It's like writing something in ink—it stays, no matter what. This way, even if something goes wrong, your data remains safe.

-- ACID in Action:

-- Imagine booking a flight. You check availability (atomicity), ensuring there's a seat. You book it (consistency), adhering to available options. Your booking is isolated from others' transactions until you're done (isolation). Once booked, your seat stays reserved, even if there's a system crash (durability).