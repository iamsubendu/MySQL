-- find duplicate rows in table

SELECT *,COUNT(empId)
FROM employee
GROUP BY empId
HAVING COUNT(empId) >1;

-- to find even records

SELECT * 
FROM employee
WHERE (empId % 2 = 0);

SELECT * 
FROM employee
WHERE MOD(empId, 2) = 0;

-- to display 1st and last record

SELECT * FROM employee
WHERE
(
    SELECT MIN(empId)
    FROM employee
)
UNION
SELECT * FROM employee
WHERE
(
    SELECT MAX(empId)
    FROM employee
);