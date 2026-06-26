SET autocommit = 0; -- If autocommit is ON (which is the default in MySQL), statement becomes its own transaction and is committed immediately
					-- Then, ROLLBACK will have no effect.


CREATE DATABASE prime;
USE prime;

CREATE TABLE accounts (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
BALANCE DECIMAL(10,2)
);

INSERT INTO accounts (name, balance ) VALUES
('Adam' , 500.00),
('Bob', 300.00),
('Charlie', 1000.00);



START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;
COMMIT;
SELECT *FROM accounts;


START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;
ROLLBACK ;
SELECT *FROM accounts;


START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
COMMIT;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;

ROLLBACK;
SELECT *FROM accounts;

START TRANSACTION;

UPDATE accounts SET balance = balance + 1000 WHERE id = 1;
SAVEPOINT after_wallet_topup;

UPDATE accounts SET balance = balance + 10 WHERE id = 1;
-- Suppose an 'ERROR' occurs ==> This particular operation can be completed separately , won't hinder the rest of the process

ROLLBACK TO after_wallet_topup;
COMMIT;

