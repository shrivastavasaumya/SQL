-- 2nd project

CREATE TABLE student(
roll_no INT PRIMARY KEY ,
name VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
marks  INT DEFAULT 0);

INSERT INTO student
(roll_no, name, city, marks)
VALUES
(110, 'adam', 'Delhi', 76),
(108, 'bob' , 'Mumbai', 65),
(124, 'casey', 'Pune', 94),
(112, 'Duke', 'Pune', 80);

SELECT *FROM student;

SELECT *FROM student
WHERE marks > 75;


SELECT DISTINCT city FROM student;
-- OR
SELECT city
FROM student
GROUP BY city;


SELECT city , max(marks)   
FROM student          
GROUP BY city;


SELECT avg(marks)
FROM student;

ALTER TABLE student
ADD COLUMN grade VARCHAR(2);


-- Adding grades according to marks obtained

UPDATE student
SET grade = 'O'
WHERE marks >= 80;

UPDATE student
SET grade = 'A'
WHERE marks >= 70 AND marks < 80;

UPDATE student
SET grade = 'B'
WHERE marks >= 60 AND marks < 70;






