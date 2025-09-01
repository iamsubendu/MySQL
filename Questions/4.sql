-- Their are 3 roles in user defined by A,B,C
 
-- A  Admin
-- B  Sales
-- C  User

-- Their are 3 pages which have different access
 
-- Home          A  S  U
-- Add User      A  S
-- Delete User   A
 
-- In input we will pass (pageName,role)
 
-- ex: 'Home',A
 
-- Write a query if its true or not

access_query = """
SELECT CASE
    WHEN (:pageName = 'Home' AND :role IN ('A', 'S', 'U')) THEN TRUE
    WHEN (:pageName = 'Add User' AND :role IN ('A', 'S')) THEN TRUE
    WHEN (:pageName = 'Delete User' AND :role = 'A') THEN TRUE
    ELSE FALSE
END;
"""

result = access_query.execute(pageName='Home', role='A')  # returns TRUE
result = access_query.execute(pageName='Add User', role='S')  # returns TRUE
result = access_query.execute(pageName='Delete User', role='U')  # returns FALSE


