CREATE TABLE employee(
	SELECT * FROM employee;

	 DELETE FROM employee WHERE department = 'IT';
	 DELETE FROM employee WHERE  = 'IT';
	 
)
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INT NOT NULL,
	city VARCHAR(50)
);

SELECT * FROM users;

INSERT INTO users(username, email, age, city) VALUES
('Prashant Kumar', 'prashantbabu980123@gmail.com',21, 'Aurangabad'),
('rahul', 'rahul@gmail.com', 24, 'Delhi'),
('priya', 'priya@gmail.com', 22, 'Mumbai'),
('amit', 'amit@gmail.com', 27, 'Bangalore'),
('neha', 'neha@gmail.com', 23, 'Kolkata'),
('vikas', 'vikas@gmail.com', 29, 'Hyderabad'),
('pooja', 'pooja@gmail.com', 25, 'Chennai'),
('rohit', 'rohit@gmail.com', 26, 'Pune'),
('anjali', 'anjali@gmail.com', 20, 'Lucknow'),
('sachin', 'sachin@gmail.com', 30, 'Jaipur'),
('deepak', 'deepak@gmail.com', 28, 'Bhopal'),
('kiran', 'kiran@gmail.com', 24, 'Ranchi'),
('manish', 'manish@gmail.com', 31, 'Ahmedabad'),
('sneha', 'sneha@gmail.com', 22, 'Indore'),
('arjun', 'arjun@gmail.com', 27, 'Surat'),
('kavita', 'kavita@gmail.com', 26, 'Nagpur'),
('nitesh', 'nitesh@gmail.com', 23, 'Varanasi'),
('ritu', 'ritu@gmail.com', 25, 'Kanpur'),
('abhishek', 'abhishek@gmail.com', 29, 'Gurgaon'),
('sonali', 'sonali@gmail.com', 24, 'Noida');

SELECT user_id, username FROM users; --used to show the specific column from the table

-- using update command 
UPDATE users SET username = 'Prashant Kumar Rajhans' WHERE user_id=1;

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
