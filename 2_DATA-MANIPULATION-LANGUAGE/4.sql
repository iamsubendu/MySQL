-- MERGE
-- Purpose: Upsert operation (INSERT or UPDATE based on condition)
-- Real Scenario: Syncing product data from external system

-----------------------------------------------------------------
INSERT INTO Products (name, price)
VALUES ('iPhone 15', 999.99);
-- If iPhone 15 already exists, this will throw an error 
-- (duplicate key) or create a duplicate row.

UPDATE Products
SET price = 998.99
WHERE name = 'iPhone 15';
-- If iPhone 15 doesn’t exist yet, this does nothing.
-----------------------------------------------------------------

MERGE INTO Products p
USING (SELECT 'iPhone 15' AS name, 999.99 AS price) s
ON p.name = s.name
WHEN MATCHED THEN 
    UPDATE SET p.price = s.price
WHEN NOT MATCHED THEN 
    INSERT (name, price) VALUES (s.name, s.price);
