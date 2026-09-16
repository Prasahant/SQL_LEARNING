/*SQL Product Inventory Management & COALESCE Function Practice*/
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

/* . COALESCE function Assignments
Adding a Discount Price Column*/
ALTER TABLE products 
ADD COLUMN discount_price NUMERIC(10,2);

--Calculating Discounted Product Prices
UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN('Laptop','Water Bottle') ;
--Displaying Original and Discounted Prices
SELECT product_name, price, discount_price 
FROM products;
--Handling NULL Values Using COALESCE
SELECT product_name,price,
	COALESCE(discount_price, price)AS final_price
FROM products;

/*showing the total_discount on price column */
--Adding a Total Discount Column
ALTER TABLE products
ADD COLUMN total_discount NUMERIC(10,2);
--Calculating Total Discount Amount
UPDATE products
SET total_discount = price*0.1
--SET total_discount = price-discount_price
WHERE product_name NOT IN('Laptop','Water Bottle') ;
--Generating Final Product Price Report
SELECT product_name,price,total_discount,
	COALESCE(discount_price, price)AS final_price
FROM products;


SELECT * FROM products;

