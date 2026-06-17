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

CREATE TABLE post (
id INT PRIMARY KEY ,
content VARCHAR(100),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)   -- foreign key kaha se aai hai yeh batane k liye 'refrences' use krte hai
);                                           --> 'user' table ki 'id' column se key leni hai
