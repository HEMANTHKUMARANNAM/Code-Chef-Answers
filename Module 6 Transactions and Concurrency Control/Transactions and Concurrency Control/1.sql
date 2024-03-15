-- What is Transaction in DBMS
-- Now that we know about Relational Databases and SQL, let's learn about a few more things related to DBMS.

-- Imagine them as protective barriers ensuring your data remains solid. They group tasks together, treating them as a single unit to maintain accuracy.

-- The Transaction Concept
-- Visualize a hotel reservation system. A transaction here involves a series of steps that are either all accomplished successfully or none at all.

-- Booking a Room:

-- Check_Room_Availability(room_id)
-- Reserve_Room(room_id)
-- Update_Room_Status(room_id, "Booked")
-- Canceling a Reservation:

-- Check_Reservation_Status(reservation_id)
-- Cancel_Reservation(reservation_id)
-- Update_Room_Status(room_id, "Available")
-- Transaction Operations:

-- Two key operations define transactions:

-- Read(X): Fetch the value of X from the database and store it in a buffer in memory.

-- Write(X): Update the database with the value from the buffer.

-- Imagine a situation where we're booking a room:

-- Read the availability status of the room and store it in a buffer.
-- Reserve the room.
-- Update the room's status to "Booked."
-- Handling Challenges:

-- Now, what if a sudden power outage occurs right after step 2? The room could end up both reserved and available, leading to confusion.

-- This is where two crucial operations come into play:

-- Commit: This makes everything you've done permanent. It's like saying, "Yes, I'm confident this is right."

-- Rollback: If anything goes wrong, this operation undoes everything in the transaction, leaving the database unchanged.

-- So, transactions ensure that your actions either all succeed or all fail, maintaining database integrity.