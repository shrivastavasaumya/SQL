
-- 1)          Basic 


-- 1.0   Select FEW
SELECT id, name, age FROM users; -- To select and show data mentioned columns from the DB 

-- 1.1   Select ALL
SELECT *FROM users;  -- '*' all = to show all values

-- 1.2   Select DISTINCT values
SELECT DISTINCT age FROM users;  --  it will show only unique/distinct age {if 2 people withsame age = it will show anyone from them}




-- 2)         WHERE clause     ---> to define some specific conditions[select]

-- 2.0  SELECT where CONDITION
SELECT *  -- select their whole info
FROM users 
WHERE followers >= 200; -- then, apply condition


SELECT name, followers  -- "name" will be printed of those who will satisfy the condition
FROM users 
WHERE followers >= 200;



-- 2.1           ARITHEMATIC operators with 'where' clause'


-- ADD
SELECT name, age
FROM USERS      -- show the person who will turn '18' after 1 year
WHERE age + 1 = 18 ;


-- 2.2          COMPARISON operators with 'where' clause'

-- Comparison
SELECT name, age  -- display name based on age condition
FROM users 
WHERE age < 16;


SELECT name, age  
FROM users 
WHERE age < 16;


-- 2.3           BITWISE operators with 'where' clause'

-- & 

SELECT name, age
FROM users  -- Display users whose age is even
WHERE (age & 1) = 0;


SELECT name, age
FROM users -- Display users whose age is odd
WHERE (age & 1) = 1;



-- 2.4          LOGICAL operators with 'where' clause'

-- AND
SELECT name , age, followers
FROM users  -- AND main dono condition match honi chahiye
WHERE age > 15 AND followers > 200;  -- based on multiple conditions

-- OR
SELECT name , age, followers
FROM users   -- OR main koi ek condition match honi chahiye
WHERE age > 15 OR followers > 200;

-- BETWEEN
SELECT name , age, followers
FROM users     -- BETWEEN main range of match honi chahiye
WHERE age BETWEEN 15 AND 17;

-- IN
SELECT name , age, email
FROM users     -- FROM main provided list k contents match hone chahiye
WHERE email IN ("casey4@yahoo.in",  "donald5@yahoo.in","abc@gmail.com");


SELECT name ,followers , email
FROM users        --  IN main age ya toh 14 hai ya 16 yeh koi range nahi hai , yeh exact values hai jiske name chahiye
WHERE age IN (14, 16);

-- NOT IN
SELECT name ,followers , email
FROM users        --  NOT IN main jinki age ya toh 14 hai ya 16 hai , uske alava sbki k names chahiye {yeh exclude krta hai}
WHERE age NOT IN (14, 16);



-- 3.                LIMIT clause


SELECT name, age  -- display name based on limit condition
FROM users 
WHERE age > 14
LIMIT 2; -- mujhe sirf 2 users ki info chahiye


SELECT name, age  
FROM users 
LIMIT 3; -- mujhe sirf 3 users ki info chahiye


-- 4.                ORDER BY clause

SELECT name , age, followers
FROM users   
ORDER BY followers ASC ;  -- kis column ko sort krna hai vo + asc/ desc yeh bataya




-- AGGREGATE FUNCTIONS (perform calculations on set of values, and return a single value)

SELECT max(followers)
FROM users;

SELECT count(age)
FROM users   -- jin logo ki age 14 k equal hai unka count
WHERE age = 14;

SELECT min(age)
FROM users;

SELECT avg(age)
FROM users;

SELECT sum(followers)
FROM users;


-- 5.                    GROUP BY clause
  
SELECT age , count(id)  -- 'id' isliye lia hai cause vo sbki 'unique' hai toh hr koi count hoga (no one will be left uncounted due to duplication in 'id') + age bhi print krvai group k age ki 
FROM users           -- age k hisab se group banaya, then unko count kia groupwise 
GROUP BY age;   -- count(id) -> is an aggregate function here


-- kis age group main ky max no. of follower hai
SELECT age , max(followers)   
FROM users          
GROUP BY age;


-- NOTE

SELECT name age , max(followers)   
FROM users          
GROUP BY age;  -- aggregate function k saath sirf vo column print hote hai jo 'group by' k under ho, jaise yaha 'name' k basis pr grouping nahi hui toh vo print nahi hoga and 'error' dega




-- 6.                   HAVING clause

SELECT age , max(followers)   
FROM users          
GROUP BY age   -- (1st) formed group
HAVING max(followers) > 200;  -- (2nd) then, applied condition on group



-- 7.                   General order :-

SELECT age, max(followers)
FROM users
GROUP BY age
HAVING max(followers) > 200
ORDER BY age DESC;
