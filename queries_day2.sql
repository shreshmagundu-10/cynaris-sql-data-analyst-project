
-- Cynaris Solutions
-- Week 1 Day 2: SQL Joins

-- 1. Create Employees table
CREATE TABLE Employees (
    emp_id INTEGER,
    emp_name TEXT,
    department TEXT
);

INSERT INTO Employees VALUES
(1, 'Ravi', 'IT'),
(2, 'Priya', 'HR'),
(3, 'Rahul', 'Finance'),
(4, 'Sneha', 'IT');

-- 2. Create Salaries table
CREATE TABLE Salaries (
    emp_id INTEGER,
    salary INTEGER
);

INSERT INTO Salaries VALUES
(1, 25000),
(2, 30000),
(3, 28000),
(5, 35000);

-- 3. INNER JOIN
SELECT E.emp_id, E.emp_name, S.salary
FROM Employees E
INNER JOIN Salaries S
ON E.emp_id = S.emp_id;

-- 4. LEFT JOIN
SELECT E.emp_id, E.emp_name, S.salary
FROM Employees E
LEFT JOIN Salaries S
ON E.emp_id = S.emp_id;

-- 5. RIGHT JOIN
SELECT E.emp_id, E.emp_name, S.salary
FROM Employees E
RIGHT JOIN Salaries S
ON E.emp_id = S.emp_id;

-- 6. FULL OUTER JOIN
SELECT E.emp_id, E.emp_name,
       S.emp_id AS salary_emp_id, S.salary
FROM Employees E
FULL OUTER JOIN Salaries S
ON E.emp_id = S.emp_id;

-- 7. Duplicate rows demonstration
CREATE TABLE Projects (
    emp_id INTEGER,
    project_name TEXT
);

INSERT INTO Projects VALUES
(1, 'Sales Dashboard'),
(1, 'Customer Analysis'),
(2, 'Financial Report');

SELECT E.emp_name, P.project_name
FROM Employees E
INNER JOIN Projects P
ON E.emp_id = P.emp_id;

-- 8. SELF JOIN
CREATE TABLE Staff (
    emp_id INTEGER,
    emp_name TEXT,
    manager_id INTEGER
);

INSERT INTO Staff VALUES
(1, 'Ravi', NULL),
(2, 'Priya', 1),
(3, 'Rahul', 1),
(4, 'Sneha', 2);

SELECT E.emp_name AS Employee,
       M.emp_name AS Manager
FROM Staff E
LEFT JOIN Staff M
ON E.manager_id = M.emp_id;

-- 9. Table aliases
SELECT E.emp_name, S.salary
FROM Employees E
INNER JOIN Salaries S
ON E.emp_id = S.emp_id;
