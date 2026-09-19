--JOINS 

--FIRST TABLE
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);
INSERT INTO Employees (first_name, last_name, department_id)
VALUES
('John', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Amit', 'Verma', 101),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

SELECT * FROM employees;

--SECOND TABLE
DROP TABLE departments;
CREATE TABLE departments(
	department_id INT PRIMARY KEY,
	department_name VARCHAR(50)
);

INSERT INTO departments(
department_id, department_name
) VALUES
(101,'Sales'),
(102,'Marketing'),
(103,'IT'),
(104,'HR');


SELECT * FROM departments;


--codes for JOINS 
/*1 INNER JOIN: Write a SQL query to retrieve 
the first_name, last_name, and department_name 
for all employees who have a matching department.*/

SELECT e.employee_id, e.first_name,
e.last_name,d.department_id,d.department_name
FROM employees e 
INNER JOIN 
departments d 
ON e.department_id = d.department_id;

--2. (Left Join / Full Join)
/*"Retrieve all Employees3 and their department names,
including those without a department."*/

SELECT e.employee_id, e.first_name,
e.last_name,d.department_name
FROM employees e 
LEFT JOIN 
departments d 
ON e.department_id = d.department_id;

--3. RIGHT JOIN
/*Retrieve all departments and the Employees3
working in them, including departments without*/
SELECT e.employee_id, e.first_name,
e.last_name,d.department_name
FROM employees e 
RIGHT JOIN 
departments d 
ON e.department_id = d.department_id;

--4 FULL OUTER JOIN
/*Retrieve all Employees3 and departments, 
including non-matching records from both tables*/

SELECT e.employee_id, e.first_name,
e.last_name,d.department_name
FROM employees e 
FULL OUTER JOIN 
departments d 
ON e.department_id = d.department_id;

--5 CROSS JOIN
/*Retrieve all possible combinations of
Employees3 and departments.*/

SELECT e.first_name,
e.last_name,d.department_name
FROM employees e 
CROSS JOIN 
departments d 

--SELF JOIN
/* Find Employees3 who share the same department*/

SELECT e1.first_name AS employee1,
	e2.first_name AS employee2,
	d.department_id, d.department_name
FROM employees e1 
JOIN employees e2
ON e1.department_id = e2.department_id 
AND e1.employee_id != e2.employee_id
JOIN departments d
ON e1.department_id = d.department_id;



