-- EMP_Manager

-- EmpId EmpName ManagerId
-- E001	  Amit	   E004
-- E002	  Suraj	   Null
-- E003   Vikas    E002
-- E004   Viraj    Null

-- From this table fetch only Employee which have Manager with manager name.

-- E001 Amit  Viraj
-- E003 Vikas Suraj

SELECT e.EmpId, e.EmpName, m.EmpName AS ManagerName
FROM EMP_Manager e
JOIN EMP_Manager m ON e.ManagerId = m.EmpId
WHERE e.ManagerId IS NOT NULL;