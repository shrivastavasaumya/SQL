
-------------------------------------------------- SIGNED and UNSIGNED Numerics ------------------------------------------------------------------


SHOW DATABASES;  -- saare DB show kro

USE instagram;   -- iss DB ko use krne ko bol rahe hai

CREATE TABLE users(
    id INT PRIMARY KEY,

    age INT UNSIGNED,    -- age kabhi negative nahi ho sakti, isliye UNSIGNED use kiya

    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,

    followers INT UNSIGNED DEFAULT 0,  -- followers negative nahi ho sakte

    following INT UNSIGNED,            -- following count bhi negative nahi ho sakta

    CONSTRAINT CHECK (age >= 13)  -- condition that every row / user must satisfy
);

CREATE TABLE post (
    id INT PRIMARY KEY,
    content VARCHAR(100),

    user_id INT,   -- SIGNED by default (same datatype as users.id)
                   -- jab tum sirf INT likhte ho, to MySQL usse SIGNED INT maanta hai by default.

    FOREIGN KEY (user_id) REFERENCES users(id)
    -- foreign key kaha se aai hai yeh batane k liye REFERENCES use krte hai
    -- 'users' table ki 'id' column se leni hai
);



------------------------------------------------------------------NOTE----------------------------------------------------------------


-- to users.id bhi SIGNED INT hai kyunki tumne UNSIGNED nahi likha.
-- to post.user_id bhi SIGNED INT hai.

-- Isliye dono ka datatype match kar raha hai:



-- But agar tum aisa kar do:

CREATE TABLE users(
    id INT UNSIGNED PRIMARY KEY
);

CREATE TABLE post(
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- > to error aayegi kyunki:

-- users.id     --> INT UNSIGNED
-- post.user_id --> INT SIGNED

-- Datatype exactly same nahi hai.
-- Isliye Foreign Key banate waqt size aur SIGNED/UNSIGNED dono match hone chahiye.