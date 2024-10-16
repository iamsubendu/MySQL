-- Alter
-- change table data

ALTER TABLE test
ADD COLUMN fName VARCHAR(50);

ALTER TABLE test
DROP COLUMN fName ;

ALTER TABLE test
RENAME TO test2;

ALTER TABLE test
CHANGE COLUMN fName age INT;

ALTER TABLE test
MODIFY fname VARCHAR(255);

-- Truncate
-- to delete table data

TRUNCATE TABLE test;