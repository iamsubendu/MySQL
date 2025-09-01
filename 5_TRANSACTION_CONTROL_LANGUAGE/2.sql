-- ROLLBACK
-- Purpose: Undoes all changes made in the current transaction, 
-- returning the database to its previous state
-- Real Scenario: Canceling an order when payment fails 
-- or items are out of stock

-- Start a transaction
BEGIN TRANSACTION;

-- Insert order header
INSERT INTO Orders (customer_id, order_date, total_amount) 
VALUES (123, CURRENT_TIMESTAMP, 299.99);

-- Check payment status
SELECT payment_status FROM Payments WHERE order_id = LAST_INSERT_ID();

-- If payment failed, rollback the entire order
IF payment_status = 'FAILED' THEN
    ROLLBACK;
    -- Database returns to state before transaction started
ELSE
    COMMIT;
END IF;
-- END IF; marks the end of the IF statement.
-- Without END IF;, the database wouldn’t know where the conditional block ends.