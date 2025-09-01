-- SAVEPOINT
-- Purpose: Creates a point within a transaction to which 
-- you can rollback, without rolling back the entire transaction
-- Real Scenario: Complex order processing with multiple validation steps

-- Start transaction
BEGIN TRANSACTION;

-- Step 1: Create order
INSERT INTO Orders (customer_id, order_date) VALUES (123, CURRENT_TIMESTAMP);
SAVEPOINT order_created;

-- Step 2: Validate inventory
UPDATE Products SET stock = stock - 2 WHERE product_id = 456;
IF (SELECT stock FROM Products WHERE product_id = 456) < 0 THEN
    ROLLBACK TO SAVEPOINT order_created;
    -- Only inventory update is rolled back, order remains
END IF;

-- Step 3: Process payment
INSERT INTO Payments (order_id, amount) VALUES (LAST_INSERT_ID(), 299.99);
SAVEPOINT payment_processed;

-- If everything succeeds
COMMIT;