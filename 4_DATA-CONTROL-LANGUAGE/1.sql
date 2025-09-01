-- DCL commands are used to control access to database objects 
-- and manage user permissions. They ensure data security by 
-- defining who can access what data and what operations they 
-- can perform.

-- GRANT
-- Purpose: Gives specific privileges to users or roles on database objects
-- Real Scenario: Giving a sales team member read access to product data

-- By default, the user who creates the table becomes its owner.
-- The owner automatically has all privileges on the table 
-- (SELECT, INSERT, UPDATE, DELETE, etc.).
-- Other users have no privileges unless the owner or DBA explicitly grants them.

-- Grant SELECT permission on Products table to sales_user
GRANT SELECT ON Products TO sales_user;

-- Grant multiple permissions to a role
GRANT SELECT, INSERT, UPDATE ON Orders TO sales_role;

-- Grant all permissions on a specific database
GRANT ALL PRIVILEGES ON ecommerce_db.* TO admin_user;

-- Grant permission with option to grant to others
GRANT SELECT ON Products TO manager_user WITH GRANT OPTION;