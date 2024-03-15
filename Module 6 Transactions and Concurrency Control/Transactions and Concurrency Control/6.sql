-- Recoverability in DBMS
-- Recoverability in DBMS is like having a safety net for transactions. It ensures that the database can return to a consistent state even after unexpected failures, safeguarding data integrity.

-- Understanding Recoverability
-- Think of recoverability as a backup plan. It ensures that if something goes wrong—like a system crash or power outage—the database can be restored to a known and consistent state.

-- Key Concepts
-- Write-Ahead Logging (WAL): Transactions generate logs before making changes. These logs record what changes are about to be made, serving as a reference for recovery.

-- Transaction Rollback: If a failure occurs mid-transaction, the changes can be undone, bringing the database back to its pre-transaction state.

-- Transaction Redo: After a failure, committed transactions can be reapplied using the logs, ensuring that their changes are persistent.

-- Recovery Process
-- Analysis: The recovery manager examines the logs to identify the last committed transactions before the failure.

-- Undo Phase: The changes of incomplete transactions are undone using the logs, restoring the database to a consistent state.

-- Redo Phase: Committed transactions are re-executed using the logs to reapply their changes.

-- Example
-- Imagine an online order. If the system crashes after payment but before updating the inventory, recoverability ensures that the payment is rolled back and the inventory is restored correctly.