-- employess, salary
-- display output of single employee
-- quarter1-3,4,5...12,1,2

SELECT salary, month, quarter
FROM employees
WHERE name = 'Subendu' AND month IN (3,4,5,6,7,8,9,10,11,12,1,2)
ORDER BY month;

SELECT salary, month, quarter
FROM employees
WHERE name = 'Subendu' 
  AND ((year = 2023 AND month IN (3, 4, 5, 6, 7, 8, 9, 10, 11, 12)) 
       OR (year = 2024 AND month IN (1, 2)))
ORDER BY 
  CASE 
    WHEN month IN (3, 4, 5) THEN 1  -- First quarter
    WHEN month IN (6, 7, 8) THEN 2  -- Second quarter
    WHEN month IN (9, 10, 11) THEN 3  -- Third quarter
    WHEN month IN (12, 1, 2) THEN 4 -- Fourth quarter
  END,
month;


-- if quarter column is not their

SELECT salary, month,
  CASE 
    WHEN month IN (1, 2, 3) THEN 1  -- First quarter
    WHEN month IN (4, 5, 6) THEN 2  -- Second quarter
    WHEN month IN (7, 8, 9) THEN 3  -- Third quarter
    WHEN month IN (10, 11, 12) THEN 4 -- Fourth quarter
  END AS quarter
FROM employees
WHERE name = 'Subendu' 
  AND ((year = 2023 AND month IN (3, 4, 5, 6, 7, 8, 9, 10, 11, 12)) 
       OR (year = 2024 AND month IN (1, 2)))
ORDER BY 
  CASE 
    WHEN month IN (3, 4, 5) THEN 1  -- First quarter
    WHEN month IN (6, 7, 8) THEN 2  -- Second quarter
    WHEN month IN (9, 10, 11) THEN 3  -- Third quarter
    WHEN month IN (12, 1, 2) THEN 4 -- Fourth quarter
  END,
month;
