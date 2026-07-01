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


-- Left exclusive = 'A' alone ka data chahiye, nothing common with 'B'

-- Left Exclusive

SELECT *
FROM customers AS A
LEFT JOIN orders AS B  
ON A.customer_id = B.customer_id  -- Got values from B  and common
WHERE B.customer_id IS NULL; -- Removed the common values, leaving only those values which are not common and have NULL values with them 
-- values "null" hogi cause unki 'id' dusre table main nahi exist krti hongi, mtlb vo 'uncommon' values hai which are 'exclusive'
--Inshort:- jinki value 'a' main hai, but 'b' table main nhi