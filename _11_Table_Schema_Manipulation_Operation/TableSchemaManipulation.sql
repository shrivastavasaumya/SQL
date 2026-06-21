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




CREATE TABLE post (
id INT PRIMARY KEY ,
content VARCHAR(100),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)   -- In 'post' table 'id' imported from 'users' will be 'foreign key'
); 


------------------------------------------------------- Schema manipulation operations starts here --------------------------------------------


-- ALTER (To change the schema)  -- 'Columns' related operations perform krne k liye

-- 1.) ADD COLUMN :

ALTER TABLE users
ADD COLUMN city VARCHAR(25) DEFAULT "Delhi";


-- 2.)  MODIFY column :  (modify datatype / constraint)

ALTER TABLE users
MODIFY subs INT DEFAULT 5;


-- 3.)  CHANGE column : (rename)
ALTER TABLE users
CHANGE COLUMN followers subs INT DEFAULT (0);


-- 4.) DROP COLUMN :              { saari table hi delete ho jaati hai contents + table}

ALTER TABLE users
DROP COLUMN age;


-- 5.) RENAME Table :

ALTER TABLE users
RENAME TO instaUser; -- renaming the table name 'users'


-- 6.)  TRUNCATE  :      (To delete table's data) {only contents}
                      -- it deletes whole data of the table  {table rahegi bs, poori khali ho jaygi}
TRUNCATE TABLE users;


-- NOTE :- 

DROP TABLE users;  -- Error : Cannot drop table 'users' referenced by a foreign key constraint on table 'post'.
                   --         cause "id" from 'users' is a "FK" in "post", so can't DROP it before DROPPING 'post'
                   --  run it 2nd 


DROP TABLE POST;  -- run this 1st

