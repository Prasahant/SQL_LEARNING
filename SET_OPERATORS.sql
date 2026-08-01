DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023(
	students_id INT PRIMARY KEY,
	students_name VARCHAR(100),
	course VARCHAR(50)
);

SELECT * FROM students_2023;

INSERT INTO students_2023(students_id, students_name, course)
VALUES(101, 'Aarav Sharma', 'Computer Science'),
(102, 'Priya Singh', 'Data Science'),
(103, 'Rahul Verma', 'Information Technology'),
(104, 'Ananya Gupta', 'Artificial Intelligence'),
(105, 'Vikram Yadav', 'Cyber Security'),
(106, 'Sneha Mishra', 'Computer Science'),
(107, 'Rohan Kumar', 'Data Science'),
(108, 'Neha Patel', 'Electronics'),
(109, 'Aditya Joshi', 'Mechanical Engineering'),
(110, 'Pooja Sharma', 'Civil Engineering'),
(111, 'Karan Mehta', 'Computer Science'),
(112, 'Ishita Roy', 'Artificial Intelligence'),
(113, 'Manish Chauhan', 'Cyber Security'),
(114, 'Ritika Sinha', 'Information Technology'),
(115, 'Aman Tiwari', 'Data Science'),
(116, 'Simran Kaur', 'Computer Science'),
(117, 'Harsh Agrawal', 'Electronics'),
(118, 'Nidhi Jain', 'Mechanical Engineering'),
(119, 'Yash Thakur', 'Civil Engineering'),
(120, 'Kavya Saxena', 'Artificial Intelligence');


CREATE TABLE students_2024(
	students_id INT PRIMARY KEY,
	students_name VARCHAR(100),
	course VARCHAR(50)
);
SELECT * FROM students_2024;

INSERT INTO students_2024 (students_id, students_name, course)
VALUES (1, 'Aarav Sharma', 'Computer Science'),
(2, 'Priya Singh', 'Data Science'),
(3, 'Rahul Verma', 'Information Technology'),
(4, 'Ananya Gupta', 'Artificial Intelligence'),
(5, 'Vikram Yadav', 'Cyber Security'),
(6, 'Sneha Mishra', 'Computer Science'),
(7, 'Rohan Kumar', 'Data Science'),
(8, 'Neha Patel', 'Electronics'),
(9, 'Aditya Joshi', 'Mechanical Engineering'),
(10, 'Pooja Sharma', 'Civil Engineering'),
(108, 'Neha Patel', 'Electronics'),
(109, 'Aditya Joshi', 'Mechanical Engineering'),
(110, 'Pooja Sharma', 'Civil Engineering'),
(111, 'Karan Mehta', 'Computer Science'),
(112, 'Ishita Roy', 'Artificial Intelligence');

SELECT * FROM students_2024;

----UNION--- combines results, remove duplicates

SELECT students_id,students_name, course 
FROM students_2023
UNION
SELECT students_id,students_name, course 
FROM students_2024;


--UNION ALL---- Combines Results, keep duplicates
SELECT students_id,students_name, course 
FROM students_2023
UNION ALL
SELECT students_id,students_name, course 
FROM students_2024;


--INTERSECT-- Return common result
SELECT students_id,students_name, course 
FROM students_2023
INTERSECT
SELECT students_id,students_name, course 
FROM students_2024;



--EXCEPT-- Returns results in the first table but not in the Second table
SELECT students_id,students_name, course 
FROM students_2023
EXCEPT
SELECT students_id,students_name, course 
FROM students_2024;




