CREATE DATABASE SHOP;
USE SHOP; 
 
 CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'alice' , 'mumbai'),
(2, 'bob', 'delhi'),
(3, 'charlie', 'banglore'),
(4, 'david', 'mumbai');

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
amout INT 
);

INSERT INTO orders VALUES 
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 5, 700);

SELECT *FROM customers;
SELECT *FROM orders;

SELECT *
FROM customers c 
INNER JOIN orders o  -- 'c' & 'o' are just variables assigned to both tables
ON c.customer_id = o.customer_id;


SELECT c.customer_id, o.order_id, c.name  -- selecting specific columns
FROM customers c 
INNER JOIN orders o  -- 'c' & 'o' are just variables assigned to both tables
ON c.customer_id = o.customer_id;

SELECT *
FROM customers c 
LEFT JOIN orders o    -- All values of left table and maching values from right table
ON c.customer_id = o.customer_id;


SELECT *
FROM customers c 
RIGHT JOIN orders o    -- All values of right table and maching values from left table
ON c.customer_id = o.customer_id;


SELECT *
FROM customers c 
LEFT JOIN orders o    -- All values of left table and maching values from right table
ON c.customer_id = o.customer_id
UNION   -- union -- extracts the common parts taken by both of them indvidually 
SELECT *
FROM customers c 
RIGHT JOIN orders o    -- All values of right table and maching values from left table
ON c.customer_id = o.customer_id;


SELECT *
FROM customers
CROSS JOIN orders;


