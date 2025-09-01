-- UPDATE
-- Purpose: Modifies existing records
-- Real Scenario: Updating product prices during a sale

UPDATE Products
SET price = price * 0.8
WHERE category = 'Electronics';

UPDATE albums 
SET release_year = 1982
WHERE id=1;
-- update data from table

UPDATE albums 
SET release_year =  release_year + 20;
-- to update each data by 20
