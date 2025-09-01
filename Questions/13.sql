-- Emp_salary Table

-- id emp_name emp_dept   salary

-- 1  A        IT         40000

-- 2  B        IT         20000

-- 3  C        Admin      10000

-- 4  D        Sales      80000

-- 5   E       IT         50000

-- 6   F       Admin      5000

-- 7  G        Sales      20000

-- 8  H        IT         60000

-- 9  I        Admin      5000

-- Output  -
-- Dept_name emp_name
-- IT  			    H
-- Admin 			C
-- Sales 			D

SELECT emp_dept AS Dept_name, emp_name
FROM Emp_salary
WHERE (emp_dept, salary) IN (
    SELECT emp_dept, MAX(salary)
    FROM Emp_salary
    GROUP BY emp_dept
);