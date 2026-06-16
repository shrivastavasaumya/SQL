CREATE DATABASE college;
CREATE DATABASE instagram;


CREATE DATABASE xyz;  -- yedi same name ki file exist kr rahi hogi DB main toh 'ERROR' degi, execute nahi hogi
CREATE DATABASE IF NOT EXISTS xyz;   -- yedi same name ki file exist kr rahi hogi DB main toh 'Warning' degi, pr execute hogi

DROP DATABASE school;   -- file DB main exist nahi kr rahi hogi toh 'Warning' degi
DROP DATABASE IF EXISTS school;   

SHOW TABLES;      -- saare tables show kro

SHOW DATABASES;  -- saare DB show kro