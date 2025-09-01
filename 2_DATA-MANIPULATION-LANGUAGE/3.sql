-- DELETE
-- Purpose: Removes specific records
-- Real Scenario: Removing discontinued products

DELETE FROM employees;
-- This removes all rows from the table.

-- Use WHERE clause, consider soft delete instead
DELETE FROM Products 
WHERE stock_quantity = 0 AND discontinued = 1;

DELETE FROM albums 
WHERE release_year < 2024;

DELETE FROM albums
WHERE id=6;