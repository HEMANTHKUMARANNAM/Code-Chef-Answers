-- Problem 7
-- Consider a simple checkpointing protocol and the following set of operations in the log.

-- (start, T4); (write, T4, y, 2, 3); (start, T1); (commit, T4); (write, T1, z, 5, 7);
-- (checkpoint);
-- (start, T2); (write, T2, x, 1, 9); (commit, T2); (start, T3); (write, T3, z, 7, 2); 



Correct Answer:

Undo: T3, T1; Redo: T2
Explanation:
Since T1 and T3 are not committed yet, they must be undone. The transaction T2 must be redone because it is after the latest checkpoint.