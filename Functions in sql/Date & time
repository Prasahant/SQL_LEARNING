DROP TABLE IF EXISTS products;
CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INTEGER,
	added_date DATE,
	discount_rate NUMERIC(5,2)
);

SELECT * FROM products;

INSERT INTO products
(product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 65000.00, 10, '2026-01-10', 10.00),
('Smartphone', 'Electronics', 30000.00, 25, '2026-01-15', 5.00),
('Headphones', 'Electronics', 2500.00, 50, '2026-01-20', 15.00),
('Keyboard', 'Electronics', 1800.00, 35, '2026-02-05', 8.00),
('Mouse', 'Electronics', 900.00, 60, '2026-02-10', 5.00),
('Office Chair', 'Furniture', 8500.00, 15, '2026-02-18', 12.00),
('Study Table', 'Furniture', 7000.00, 12, '2026-02-25', 10.00),
('Bookshelf', 'Furniture', 5500.00, 8, '2026-03-01', 7.50),
('Notebook', 'Stationery', 120.00, 100, '2026-03-05', 5.00),
('Pen Pack', 'Stationery', 250.00, 80, '2026-03-10', 10.00),
('Backpack', 'Accessories', 1800.00, 30, '2026-03-15', 15.00),
('Water Bottle', 'Accessories', 700.00, 45, '2026-03-20', 5.00),
('Wrist Watch', 'Accessories', 4500.00, 20, '2026-03-25', 20.00),
('Running Shoes', 'Footwear', 3500.00, 18, '2026-04-01', 10.00),
('T-Shirt', 'Clothing', 1200.00, 40, '2026-04-05', 15.00);

SELECT * FROM products;

--1. NOW() get the current date and time
SELECT NOW() AS current_date_and_time;

--2  get current date 
SELECT CURRENT_DATE AS today;

--3 give me no. of days difference from current date 
SELECT added_date , CURRENT_DATE, (CURRENT_DATE -added_date ) AS date_difference
FROM products;

--4 extract part of date
--extract the year,month and day from the added date column
SELECT product_name,added_date,
	EXTRACT(YEAR FROM added_date) AS year_added
FROM products;

SELECT product_name, added_date,
	EXTRACT(MONTH FROM added_date) AS month_added
FROM products;

SELECT product_name,added_date,
	EXTRACT(DAY FROM added_date) AS day_added
FROM products;

SELECT product_name,added_date,
	EXTRACT(YEAR FROM added_date) AS year_added,
	EXTRACT(MONTH FROM added_date) AS month_added,
	EXTRACT(DAY FROM added_date) AS day_added
FROM products;

--5 Calculate the time difference between addedd_date and todays_date
SELECT product_name,
	AGE(CURRENT_DATE, added_date) AS age
FROM products;

--6. FORMAT Dates as String
--format added_date in a custom format(DD-MM-YYYY)
SELECT product_name, added_date,
	TO_CHAR(added_date,'DD-Mon-YYYY') AS Formated_Date
FROM products;

SELECT product_name, added_date,
	TO_CHAR(added_date,'DD-Month-YYYY') AS Formated_Date
FROM products;

--7. extract the Day of the week from added date
--start as monday with 1
SELECT product_name, added_date,
	DATE_PART('dow',added_date) AS day_of_week
FROM products;

--8 extract the Year of the week from added date
SELECT product_name, added_date,
	DATE_PART('year',added_date) AS year_of_week
FROM products;

--9 extract the month of the week from added date
SELECT product_name, added_date,
	DATE_PART('month',added_date) AS year_of_week
FROM products;

--10. DATE_TRUNC() truncate date to precision
-- TRUNCATE added date to the start of the month;
SELECT product_name, added_date,
	DATE_TRUNC('month', added_date) AS month,
	DATE_PART('isodow',added_date) AS day_of_week
FROM products;

--11. add 6 months to the added date
SELECT product_name, added_date, 
	added_date+INTERVAL '6 days' AS new_date
FROM products;

--12. retrive only the current time
SELECT CURRENT_TIME as Curr_time;

--13. Convert a string to a date
SELECT TO_DATE('28-11-2026','DD-MM-YYYY') AS converted_date;


SELECT * FROM products;
