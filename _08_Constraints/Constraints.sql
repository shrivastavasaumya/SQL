-- Parent Table
CREATE TABLE Department (
    dept_id INT AUTO_INCREMENT PRIMARY KEY, -- PK: Unique id, auto-generated
    dept_name VARCHAR(50) NOT NULL          -- NOT NULL: Department name cannot be empty
);

-- Child Table
CREATE TABLE Student (
    id INT AUTO_INCREMENT PRIMARY KEY,      -- PK: Unique student id, auto-generated

    name VARCHAR(50) NOT NULL,              -- NOT NULL: Name is mandatory

    email VARCHAR(100) UNIQUE,              -- UNIQUE: No two students can have same email

    age INT CHECK (age >= 18),              -- CHECK: Age must be at least 18

    city VARCHAR(50) DEFAULT 'Indore',      -- DEFAULT: If no city is given, 'Indore' is stored

    dept_id INT,                            -- FK column

    FOREIGN KEY (dept_id)                   -- FK: Creates relationship with Department table
    REFERENCES Department(dept_id)          -- References Department's Primary Key
);