-- copy all rows of a table

CREATE TABLE empDetail
AS
SELECT * FROM employee;

CREATE TABLE empDetail
AS
SELECT empId,salary FROM employee;

CREATE TABLE empDetail
AS
SELECT empId,salary FROM employee
WHERE empId=450;

-- for creating empty table 
CREATE TABLE empDetail
AS
SELECT * FROM employee
WHERE 3=4;

-- retrieve list of employees working in same department

SELECT DISTINCT e.empId
FROM employee e, employee e1
WHERE e.department = e1.department
AND e.empId != e1.empId;

-- empDetails ends with a and contains five alphabets

SELECT *
FROM employee
WHERE empName LIKE `____a`;