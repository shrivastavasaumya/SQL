
-- 1st project 

CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE teacher(
id INT PRIMARY KEY ,
name VARCHAR(50) NOT NULL,
subject VARCHAR(50) NOT NULL,
salary  INT DEFAULT 0);


INSERT INTO teacher
(id, name, subject, salary)
VALUES
(23, "ajay", "math", 50000),
(47, "bharat", "english", 60000),
(18, "chetan", "chemistry", 45000),
(19, "divya", "physics", 75000);



SELECT *FROM teacher;

SELECT name, salary
FROM teacher
WHERE salary > 55000;


ALTER TABLE teacher
CHANGE COLUMN salary ctc INT DEFAULT (0);

SET SQL_SAFE_UPDATES = 0;


-- Increasing the value of an existing column

UPDATE teacher
SET ctc = ctc*(1.25);



ALTER TABLE teacher
ADD COLUMN city VARCHAR(25) DEFAULT "Gurgaon";


ALTER TABLE teacher
DROP COLUMN ctc;