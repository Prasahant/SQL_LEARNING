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
UPDATE users SET city = 'Kolkata', age=32 WHERE username='rahul';
UPDATE users SET age = age+4 WHERE email LIKE '%@gmail.com';

--user id in Ascending order
SELECT * FROM users ORDER BY user_id ASC;


--ALTER 
--to rename the username column
ALTER TABLE users RENAME COLUMN username TO full_name;
-- to change the age data type from INT to SMALLINT
ALTER TABLE users ALTER COLUMN age TYPE SMALLINT;
--TO ADD NOTNULL CONSTRAINTS TO CITY COLUMN
ALTER TABLE users ALTER COLUMN city SET NOT NULL;
--ALTER CHECHK CONSTRAINTS 
ALTER TABLE users DROP CONSTRAINT age;
ALTER TABLE users ADD CONSTRAINT age_check CHECK (age>20);


INSERT INTO users (full_name, email,age, city) VALUES
('priti','priti@gmail.com',28,'noida');