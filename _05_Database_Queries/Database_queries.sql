
CREATE DATABASE college;
CREATE DATABASE instagram;
CREATE DATABASE school;




-- IF SAME FILE ALREADY EXISTS

CREATE DATABASE xyz;  -- stops execution and throws "Fatal Error" 
                      

CREATE DATABASE IF NOT EXISTS xyz;   --  The query does nothing, silently ignores the command, and your script continues running 
                                     -- It will only output a warning instead of a stopping error 
                                     


-- If database is missing

DROP DATABASE college;    -- If database is missing, it Fails and throws a fatal error
DROP DATABASE IF EXISTS school;   -- Succeeds quietly with a mild warning


SHOW DATABASES;  -- To show all DB


USE instagram;   -- To use this DB
SHOW TABLES;     -- To show all tables of selected DB
