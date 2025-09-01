-- REVOKE
-- Purpose: Removes previously granted privileges from users or roles
-- Real Scenario: Removing write access from a user who changed departments

-- Revoke specific permission
REVOKE INSERT ON Orders FROM sales_user;

-- Revoke all permissions on a table
REVOKE ALL PRIVILEGES ON Products FROM temp_user;

-- Revoke permission from a role
REVOKE UPDATE ON Customers FROM sales_role;

-- Revoke all permissions from a user
REVOKE ALL PRIVILEGES ON *.* FROM terminated_user;