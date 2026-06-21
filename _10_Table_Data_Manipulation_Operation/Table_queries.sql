CREATE DATABASE instagram;
USE instagram;    -- iss DB ko use krne ko bol rahe hai
CREATE TABLE users(
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT CHECK (age >= 13)  -- -- condition that every row / user must satisfy
);



INSERT INTO users
(id, age, name, email, followers, following)
VALUES 
(1, 14, "adam", "adam@yahoo.in", 123, 145),
(2, 15, "bob", "bob18@yahoo.in", 222, 245),
(3, 16, "casey", "casey4@yahoo.in", 323, 550),
(4, 17, "donald", "donald5@yahoo.in", 287, 355),
(8, 18, "gemi", "gemi@yahoo.in", 120, 500);


--------------------------------------------------- Manipulation Operation ---------------------------------------------------

-- 1. Update (To update existing rows)  * single user k data main change

UPDATE users
SET followers = 600
WHERE age = 16;   -- those with age '16', update their followers as '600'

SET SQL_SAFE_UPDATES = 0;  -- now SQL will allow us to UPDATE data cause changed value as '1' (default is '0' that means no change can be done)


-- 2. DELETE (To delete existing rows)

DELETE FROM users
WHERE age = 14;  -- CAUTION: IF WE DID NOT WRITE 'WHERE' CLAUSE WITH DELETE, THEN ALL ROWS WILL BE DELETED

SELECT *FROM users;