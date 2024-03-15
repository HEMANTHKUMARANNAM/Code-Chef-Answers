-- Question 9
-- Consider the following log sequence of two transactions on a bank account, with initial balance 12000, that transfer 2000 to a mortgage payment and then apply a 5% interest. 1. T1 start 2. T1 B old=12000 new=10000 3. T1 M old=0 new=2000 4. T1 commit 5. T2 start 6. T2 B old=10000 new=10500 7. T2 commit Suppose the database system crashes just before log record 7 is written.




Correct Answer:

We must undo log record 6 to set B to 10000 and then redo log records 2 and 3
Explanation:
The correct answer is (B): We undo log record 6 to set B to 10000 and then redo log records 2 and 3.

Explanation:

1. Transaction T2 needs to be rolled back as it didn't complete before the crash.
2. We undo the effect of log record 6 (set B to 10500) to revert B to 10000.
3. We then redo log records 2 and 3 to apply the committed changes made by T1 (transferred 2000 for mortgage payment).
This process restores the database to a consistent state after the crash.

Options (A), (C), and (D) are incorrect because they either miss the undo step for T2 or don't address the correct sequence of redo and undo operations required for recovery.