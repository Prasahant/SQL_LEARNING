CREATE TABLE employee(
employee_id INT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
department VARCHAR(20),
salary NUMERIC(10,2),
joining_date DATE,
age INT
);
drop table employee;

SELECT * FROM employee LIMIT 20;


COPY employee
FROM 'F:\SQL FILES\employee_data.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);
