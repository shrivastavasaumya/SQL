

----------------------------------------------------------TO CREATE A DB ----------------------------------------------------------
CREATE DATABASE instagram;

----------------------------------------------------------TO DELETE A DB---------------------------------------------------------------------

DROP DATABASE xyz;  -- Throws a fatal error and crashes the script. {execution stops immediately}
DROP DATABASE IF EXISTS xyz;    -- Skips execution safely with a warning. {terminates gracefully without crashing }
 



SHOW TABLES;     
SHOW DATABASES;  -- saare DB show kro



USE instagram;    -- iss DB ko use krne ko bol rahe hai


----------------------------------------------------------TO CREATE A TABLE---------------------------------------------------------------------

CREATE TABLE users(
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT CHECK (age >= 13)  -- -- condition that every row / user must satisfy
);


----------------------------------------------------------TO INSERT VALUE---------------------------------------------------------------------


INSERT INTO users
(id, age, name, email, followers, following)
VALUES 
(1, 14, "adam", "adam@yahoo.in", 123, 145),
(2, 15, "bob", "bob18@yahoo.in", 222, 245),
(3, 16, "casey", "casey4@yahoo.in", 323, 550),
(4, 17, "donald", "donald5@yahoo.in", 287, 355);



-- CHECKING THE DUPLICATION :-


INSERT INTO users
(id, age, name, email)
VALUES
(11, 22, "maam", "bob18@yahoo.in");  -- "Duplicate entry "bob18@yahoo.in" for key "users.email" {because 'email' should be unique, so any duplicate value will raise 'error'}

INSERT INTO users
(id, age, name, email)
VALUES 
(1, 20, "sam", "sam7@yahoo.in");    -- "Duplicate entry "1" for key "users.PRIMARY" = error {cause 'id' is a primary key which cannot be duplicte}

INSERT INTO users
(id, age, name, email)
VALUES
(22, 11, "gammy", "gammy8@yahoo.in");  -- Error: Check constraint 'users_chk_1' is violated {age constraint is violated}



----------------------------------------------------------TO SHOW VALUES---------------------------------------------------------------------


SELECT id, name, email, age FROM users;  -- To select and show data from the DB 

SELECT id, name, age FROM users;   -- to view a few

SELECT *FROM users;    -- '*' all - to select all values

SELECT DISTINCT age FROM users;  --  it will show only unique/distinct age {if 2 people withsame age = it will show anyone from them}



