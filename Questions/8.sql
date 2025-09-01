-- Find 3rd highest salary

SELECT * 
FROM employee
ORDER BY salary DESC
LIMIT 2,1;

-- Find 2nd highest salary

SELECT * 
FROM employee
ORDER BY salary DESC
LIMIT 2,1;

-- find nth highest salary without using limit

SELECT salary 
FROM employee e1
WHERE n-1 =                           -- for 3rd highest -> 3-1 =2
(SELECT COUNT(DISTINCT salary))
FROM employee e2
WHERE e2.salary > e1.salary);

-- count = 0 -> highest salary
-- count = 1 -> 2nd highest
-- count = 2 -> 3rd highest