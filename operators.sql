

drop table employee2;

CREATE TABLE employee2(
employee_id INT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
department VARCHAR(20),
salary NUMERIC(10,2),
joining_date DATE,
age INT
);


SELECT * FROM employee2 LIMIT 20;


COPY employee2
FROM 'F:\SQL FILES\employee_data.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

--ANOTHER METHODS
COPY employee2 (
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


CREATE TABLE IF NOT EXISTS employee3(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20)NOT NULL,
	department VARCHAR(30),
	salary NUMERIC(10,2) CHECK(salary>0),
	joining_date DATE NOT NULL,
	age INT
);

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


