CREATE TABLE employee(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	age INT NOT NULL,
	designation VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT * FROM employee;

INSERT INTO employee (emp_id, name, age, designation, department, hire_date, salary) VALUES
	(1,'PRASHANT KUMAR',21,'Data Analyst','Sales','2025-07-12', 62000.50),
	(2, 'RAHUL SHARMA', 25, 'Software Engineer', 'IT', '2024-03-15', 75000.00),
	(3, 'PRIYA SINGH', 28, 'HR Executive', 'HR', '2023-08-10', 55000.00),
	(4, 'AMIT KUMAR', 30, 'Project Manager', 'Operations', '2022-05-20', 95000.00),
	(5, 'NEHA GUPTA', 26, 'Business Analyst', 'Finance', '2024-01-18', 68000.75),
	(6, 'VIKAS VERMA', 29, 'Data Scientist', 'Analytics', '2023-11-05', 88000.50),
	(7, 'POOJA YADAV', 24, 'Marketing Executive', 'Marketing', '2024-06-12', 52000.00),
	(8, 'ROHIT MISHRA', 27, 'System Administrator', 'IT', '2023-09-25', 70000.00),
	(9, 'ANJALI KUMARI', 23, 'Junior Developer', 'IT', '2025-02-14', 48000.00),
	(10, 'SACHIN PATEL', 31, 'Senior Developer', 'IT', '2021-07-30', 105000.25);

ALTER TABLE employee
RENAME employee_id TO emp_id

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;
