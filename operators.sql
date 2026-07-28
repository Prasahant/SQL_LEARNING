
CREATE TABLE IF NOT EXISTS employee3(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20)NOT NULL,
	department VARCHAR(30),
	salary NUMERIC(10,2) CHECK(salary>0),
	joining_date DATE NOT NULL,
	age INT
);

COPY employee3
FROM 'F:\SQL FILES\employee_data.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

--ANOTHER METHODS
COPY employee3 (
    employee_id,
    first_name,
    last_name,
    department,
    salary,
    joining_date,
    age
)
FROM 'F:/SQL FILES/employee_data.csv'
DELIMITER','
CSV HEADER;

SELECT * FROM employee3;


-- ARITHMETIC OPERATOR
--1. Retrive the first name, salary and calculate a 10% bonus on the salary
SELECT first_name, salary,(salary*0.10) AS bonus
FROM employee2 ;

--2. Calculate the annual salary and salary Increment by 5 % - show the monthly new salary as well
SELECT first_name, last_name, salary, 
(salary * 12) AS annual_salary,
(salary * 0.05) AS increment_amount,
(salary * 1.05)AS new_salary1,
(salary + salary * 0.05) AS new_salary2
FROM employee3;


--COMPARISON OPERATORS
--1. find the first name where age is equal(=) to 30
SELECT first_name, age FROM employee3 WHERE age=30;

--2. find the first name and age of the employees whose ages are not equal to 30
SELECT first_name, age FROM employee3 WHERE age!=30;

--3 find the name and salary of employee whose salary is greater than 50k
SELECT first_name, salary FROM employee3 
WHERE salary>50000;


--LOGICAL OPERATOR
--1. find the first name of employee whose salary is greater than 50k and age is equal 45
SELECT first_name, salary, age FROM employee3
WHERE salary >=50000 AND age = 45;

--2 find the name and department of the employee whose age >=56 or salary >=60k
SELECT first_name, last_name, department, salary, age
FROM employee3
WHERE salary>60000 OR age >=56;

--3. select employee name where department is not including IT
SELECT first_name, last_name, department
FROM employee3
WHERE NOT (department='IT');
SELECT * FROM employee3;


--BETWEEN, LIKE and IN OPERATOR
--1. retrive employee whose salary is between 40k and 60k
SELECT first_name, salary 
FROM employee3
WHERE salary BETWEEN 40000 AND 60000;

--2. find the name of employee whose first name is start from Pra
SELECT first_name, last_name FROM employee3
WHERE last_name LIKE 'C%' ; --'%k';

--3. retrive employee name whose belong to either 'Finance' or 'Marketing' department
SELECT first_name, department
FROM employee3
WHERE department IN ('Finance','Marketing');


--IS NULL , ORDER BY, LIMIT , DISTINCT OPERATOR
--1. find the employee whose age is null
SELECT first_name, age FROM employee3
WHERE age IS NULL;

--2. List employee sorted by salary in descinding order
SELECT first_name, salary FROM employee3
ORDER BY salary DESC;

--3. Retrive the top 5 highest paid employee
SELECT first_name, salary FROM employee3
ORDER BY salary DESC LIMIT 5;

--4. Retrive a list of unique department
SELECT DISTINCT  department FROm employee3 ;

--5 Retrive a count of unique department
SELECT COUNT(DISTINCT  department)AS dept_count
FROM employee3 ;
