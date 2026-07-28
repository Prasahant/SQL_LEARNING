

----Assignments 
DROP TABLE IF EXISTS employee;

--create a table name employee
CREATE TABLE Employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20)NOT NULL,
	department VARCHAR(30),
	salary NUMERIC(10,2) CHECK(salary>0),
	joining_date DATE NOT NULL,
	age INT CHECK(age>=18)
);

SELECT * FROM Employees;

--insert some data into tables
INSERT INTO Employees (first_name, last_name, department, salary,joining_date,age)
VALUES
('Prashant','Kumar','IT',45000.00,'2025-05-04',23),
('Ravi','Gupta','Sales',66000.90,'2024-07-23',45),
('Rahul','Roy','HR',90000.00,'2012-09-28',44),
('Kriti','Kumari','CEO',100000.00,'2026-10-31',23),
('Praphool','Kumar','IT',20000.00,'2025-10-29',21);


--Questions
--1.retrieve all employee's first names and their departments.
SELECT first_name, department FROM Employees;

--2. Update the salary of all employes in the IT department By increasing 10 %
UPDATE Employees SET salary = salary + (salary*0.1)
WHERE department = 'IT';

--3. Delete all employee who are older than 32 years
DELETE FROM Employees WHERE age>32;

--4. Add a New column (email) to the employees table
ALTER TABLE Employees
ADD COLUMN email VARCHAR(100) ;

--5. rename the department name to 'dept_name'
ALTER TABLE Employees
RENAME COLUMN department TO dept_name;

--6. Retrive the name of employees who joined after 1 january, 2021
SELECT first_name, last_name FROM Employees 
WHERE joining_date > '2021-01-01';

--7. change the data type of the salary column to integer
ALTER TABLE Employees
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

--8. List all employees with their age and salary in descing order of salary
SELECT first_name, last_name, age, salary 
FROM Employees ORDER BY salary DESC;

--9. Insert a new employee with a following details 
--('Raj','Singh','SALES',67000,'2023-02-01',30,'raj@gmail.com')
INSERT INTO Employees(first_name, last_name, dept_name, salary,joining_date,age,email)
VALUES('Raj','Singh','SALES',67000,'2023-02-01',30,'raj@gmail.com');

--10. Update the age of every employee by +1
UPDATE Employees SET age= age+1;

SELECT * FROM Employees;
