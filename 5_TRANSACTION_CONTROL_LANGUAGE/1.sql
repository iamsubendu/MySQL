-- TCL (Transaction Control Language)
-- Commands: COMMIT, ROLLBACK, SAVEPOINT
-- Purpose: Manage database transactions

-- TCL commands manage database transactions, ensuring data 
-- integrity and consistency. They control when changes become 
-- permanent and when they can be rolled back.

-- COMMIT
-- Purpose: Makes all changes in the current transaction 
-- permanent and visible to other users
-- Real Scenario: Finalizing a customer order after all 
-- items are confirmed in stock

-- COMMIT makes all changes permanent. After COMMIT, 
-- you cannot ROLLBACK those changes.

-- Start a transaction
BEGIN TRANSACTION;

-- Insert order header
INSERT INTO Orders (customer_id, order_date, total_amount) 
VALUES (123, CURRENT_TIMESTAMP, 299.99);

-- Insert order items
INSERT INTO OrderItems (order_id, product_id, quantity, price) 
VALUES (LAST_INSERT_ID(), 456, 2, 149.99);

-- Check if everything is successful
-- If yes, commit the transaction
COMMIT;

-- After COMMIT, changes are permanent and visible to all users