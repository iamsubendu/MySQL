-- id ,parentId,name
-- 1,0,A
-- 2,1,B
-- 3,1,C
-- 4,2,D
-- 5,0,E
-- result should be
-- no of child for every users
-- show only which have atleast 1 child

SELECT 
    u.id,
    u.name,
    COUNT(c.id) AS childCount
FROM 
    users u
LEFT JOIN 
    users c ON u.id = c.parentId
WHERE 
    u.parentId = 0 -- This ensures we are only looking at top-level users
GROUP BY 
    u.id, u.name
HAVING 
    COUNT(c.id) > 0; -- Filter to show only users with at least one child