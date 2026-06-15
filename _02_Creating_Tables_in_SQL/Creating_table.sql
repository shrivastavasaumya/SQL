CREATE DATABASE college;
CREATE DATABASE instagram;
CREATE DATABASE school;
CREATE DATABASE xyz;  -- yedi same name ki file exist kr rahi hogi DB main toh 'ERROR' degi, execute nahi hogi
CREATE DATABASE IF NOT EXISTS xyz;   -- yedi same name ki file exist kr rahi hogi DB main toh 'Warning' degi, pr execute hogi
DROP DATABASE IF EXISTS school;   
SHOW TABLES;     
SHOW DATABASES;  -- saare DB show kro