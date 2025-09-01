-- Locking in SQL is a mechanism used to control access to database resources, ensuring data 
-- integrity and consistency when multiple transactions are executed concurrently. Locks prevent 
-- conflicts that can arise from simultaneous data modifications. 

-- =================================================================================================

-- Types of Locks

-- Shared Lock (S Lock):
-- Allows multiple transactions to read a resource but prevents any transaction from modifying it.
-- Used during SELECT operations.

-- Exclusive Lock (X Lock):
-- Prevents other transactions from reading or modifying a resource.
-- Used during INSERT, UPDATE, or DELETE operations.

-- Update Lock (U Lock):
-- A hybrid lock that is used to prevent deadlocks. It is applied when a transaction intends to update 
-- a resource.
-- It allows other transactions to read the resource but prevents them from acquiring an exclusive lock.

-- Intent Locks:
-- Used in hierarchical locking to indicate that a transaction intends to acquire locks at a lower 
-- level in the hierarchy.

-- =================================================================================================

-- Considerations

-- Deadlocks: When two or more transactions are waiting for each other to release locks, a deadlock occurs. 
-- Most DBMSs have mechanisms to detect and resolve deadlocks by rolling back one of the transactions.

-- Performance: Excessive locking can lead to performance issues, as it can block other transactions and 
-- lead to contention. It's essential to balance data integrity with performance.

-- Lock Granularity: The level of locking (row-level, page-level, or table-level) can impact performance. 
-- Row-level locking allows for higher concurrency but may require more overhead.

-- =================================================================================================

-- Locking Mechanisms

-- Implicit Locking:
-- Most database management systems (DBMS) automatically apply locks when a transaction is initiated. 
-- For example, when you perform an INSERT, UPDATE, or DELETE, the DBMS will automatically acquire 
-- the necessary locks.

-- Explicit Locking:
-- You can manually control locking behavior using SQL commands. This is useful for complex transactions
-- where you want to ensure that certain operations are performed without interference.

-- =================================================================================================

-- SQL Commands for Locking

-- 1. Using SELECT ... FOR UPDATE
-- This command locks the selected rows for updates, preventing other transactions from modifying 
-- them until the current transaction is completed.

BEGIN;
SELECT * FROM employees WHERE employee_id = 1 FOR UPDATE;
-- Perform updates here
UPDATE employees SET salary = salary * 1.1 WHERE employee_id = 1;
COMMIT;

-- 2. Using LOCK TABLE
-- You can explicitly lock an entire table using the LOCK TABLE command. This is useful when you want 
-- to ensure that no other transactions can access the table while you perform a series of operations.

BEGIN;
LOCK TABLE employees IN EXCLUSIVE MODE;
-- Perform multiple operations here
UPDATE employees SET salary = salary * 1.1;
COMMIT;

-- 3. Using SET TRANSACTION ISOLATION LEVEL
-- You can set the isolation level of a transaction, which indirectly controls locking behavior. 
-- Common isolation levels include:

-- READ UNCOMMITTED: Allows dirty reads; no locks are held.
-- READ COMMITTED: Prevents dirty reads; shared locks are held during reads.
-- REPEATABLE READ: Prevents non-repeatable reads; locks are held until the transaction is complete.
-- SERIALIZABLE: The strictest level; prevents phantom reads by locking the entire range of data.

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN;
SELECT * FROM employees WHERE department_id = 10;
-- Perform updates here
COMMIT;