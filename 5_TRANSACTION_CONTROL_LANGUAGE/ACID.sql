-- Transaction Properties (ACID)

-- Atomicity:
-- All operations in a transaction succeed or fail together. 
-- No partial transactions.

-- Consistency:
-- A transaction brings the database from one valid state to 
-- another, maintaining all predefined rules, including 
-- constraints and cascades.

-- Isolation:
-- Transactions are isolated from each other. The intermediate
-- state of a transaction is not visible to other transactions
-- until it is committed.

-- If multiple transactions run at the same time (concurrent 
-- transactions), they can affect each other because:
-- They may read the same data
-- Transaction A reads a row while Transaction B is updating 
-- it → A might see old or inconsistent data.
-- They may write to the same data
-- Transaction A updates a row while Transaction B also updates 
-- it → could cause lost updates if not handled properly.
-- They may delete or insert rows
-- Transaction A deletes a row while Transaction B is reading 
-- it → B may fail or get wrong results.

-- These issues are called concurrency problems:
-- Dirty reads
-- Non-repeatable reads
-- Phantom reads

-- Each transaction only sees committed changes.
-- Transaction A will not see B’s new row until B commits.
-- Transaction B will not see A’s deleted row if A hasn’t committed yet.

-- Durability:
-- Once a transaction is committed, its changes are permanent,
-- even in the event of a system failure.
