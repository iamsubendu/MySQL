-- TRUNCATE
-- Purpose: Removes all records from a table (faster than DELETE)
-- Real Scenario: Clearing test data before production deployment
-- Faster than DELETE, resets auto-increment

TRUNCATE TABLE test;