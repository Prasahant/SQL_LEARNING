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

/* . WINDOW function */
--Assign a unique ROW Number to each product with in the same category

SELECT product_name, category, price,
	ROW_NUMBER() OVER(PARTITION BY category ORDER BY price ASC) AS row_num
FROM products;

--USING DENSE RANK
SELECT product_name, category, price,
	DENSE_RANK() OVER(PARTITION BY category ORDER BY price ASC) AS ranking
FROM products;

--using rank
SELECT product_name, category, price,
	RANK() OVER(PARTITION BY category ORDER BY price ASC) AS rank
FROM products;

--getting prefix summ of price 
SELECT product_name, category, price,
	SUM(price) OVER( ORDER BY price ASC) AS prefix_sum_Amount
FROM products;
SELECT * FROM products;

--getting preficx sum of amount by category
SELECT product_name, category, price,
	SUM(price) OVER(PARTITION BY category ORDER BY price ASC) AS prefix_sum_Amount
FROM products;




SELECT * FROM products;
