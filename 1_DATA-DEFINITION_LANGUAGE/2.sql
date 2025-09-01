-- Alter
-- change table data

-- Purpose: Modifies existing database objects

-- Real Scenario: Adding a new column for product ratings

ALTER TABLE test
ADD COLUMN fName VARCHAR(50);

ALTER TABLE history ADD INDEX(year);

ALTER TABLE test
DROP COLUMN fName ;

ALTER TABLE test
RENAME TO test2;

ALTER TABLE test
CHANGE COLUMN fName age INT;

ALTER TABLE test
MODIFY fname VARCHAR(255);