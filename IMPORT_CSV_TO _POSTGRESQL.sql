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
