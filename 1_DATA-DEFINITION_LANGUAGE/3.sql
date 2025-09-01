-- DROP
-- Purpose: Removes database objects completely
-- Real Scenario: Removing a temporary table after data migration
--  to delete database schema

DROP DATABASE IF EXISTS test;
-- only drop if exist to avoid error

DROP TABLE IF EXISTS temp_products_backup;