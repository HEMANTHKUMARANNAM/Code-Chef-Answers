-- Problem 8
-- Two-Phase Locking Protocol (2PL): The protocol consists of two phases, as the name suggests:

-- 1. Growing Phase: In this phase, a transaction can acquire locks but cannot release any. It's allowed to request and acquire locks on data items it needs for its operations.

-- 2. Shrinking Phase: After a transaction releases its first lock, it enters the shrinking phase. In this phase, it can release locks but cannot request or acquire any new locks.

-- The protocol is designed to prevent certain types of conflicts, like uncommitted data being accessed by other transactions, leading to inconsistencies. By enforcing the two-phase approach, the protocol ensures that once a transaction releases locks, it is committed to not accessing or modifying any more data.

-- Question
-- Consider the following two phase locking protocol. Suppose a transaction T accesses (for read or write operations), a certain set of objects {O1,...,Ok}. This is done in the following manner: Step 1. T acquires exclusive locks to O1, . . . , Ok in increasing order of their addresses. Step 2. The required operations are performed. Step 3. All locks are released. This protocol will:

-- A. guarantee serializability and deadlock-freedom
-- B. guarantee neither serializability nor deadlock-freedom
-- C. guarantee serializability but not deadlock-freedom
-- D. guarantee deadlock-freedom but not serializability

-- Did you like the problem?




Correct Answer:

A
Explanation:
The above scenario is Conservative 2PL( or Static 2PL). In Conservative 2PL protocol, a transaction has to lock all the items it access before the transaction begins execution. It is used to avoid deadlocks. Also, 2PL is  conflict serializable, therefore it guarantees serializability. 

Therefore option A Advantages of Conservative 2PL :
- No possibility of deadlock.
- Ensure serializability.

Drawbacks of Conservative 2PL :
- Less throughput and resource utilisation because it holds the resources before the transaction begins execution.
- Starvation is possible since no restriction on unlock operation.
- 2PL is a deadlock free protocol but it is difficult to use in practice.