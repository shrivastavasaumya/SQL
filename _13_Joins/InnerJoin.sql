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

-- Inner Join






-- Inner Join using ALIAS

SELECT *
FROM customers c 
INNER JOIN orders o  -- 'c' & 'o' are just variables assigned to both tables
ON c.customer_id = o.customer_id;

-- [OR]

SELECT *
FROM customers AS c   -- 'AS' is optional
INNER JOIN orders AS o  
ON c.customer_id = o.customer_id;


-- Selecting specific columns
FROM customers c 
SELECT c.customer_id, o.order_id, c.name  
INNER JOIN orders o  
ON c.customer_id = o.customer_id;