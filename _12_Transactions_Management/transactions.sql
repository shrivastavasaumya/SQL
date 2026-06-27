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


---------------------------------------------------------------COMMIT & ROLLBACK----------------------------------------------------------------------

-- CASE 1)

START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;
COMMIT;
SELECT *FROM accounts;




-- CASE 2)

-- ROLLBACK :- It undo the changes & works only on uncommitted changes

START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = balance + 50 WHERE id = 2;
ROLLBACK ;   -- Here insted of 'commit' we have 'rollback' which means undo the changes done after last commit 
SELECT *FROM accounts;
-- Here, all changes are 'rollbacked'


-- CASE 3)

START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
COMMIT;   -- yaha tk ka commit ho chuka hai toh 'rollback' yaha work nahi kr paayga
UPDATE accounts SET balance = balance + 50 WHERE id = 2; -- yeh change commit nahi hua hai toh yeh rollback ho jaygi

ROLLBACK;
SELECT *FROM accounts;
-- In this case partial commited and partial rollbacked


 -----------------------------------------------------------------SAVEPOINTS------------------------------------------------------------------

-- CASE 4)      

-- savepoint breaks a whole transaction into parts so that it allows us to roll back the transaction to a specific savepoint, 
-- effectively undoing changes made after that point
-- HELPS TO COMMIT PARTIAL CHANGES


START TRANSACTION;

UPDATE accounts SET balance = balance + 1000 WHERE id = 1;          -- isko alg treat kro & iske baad ka alg se treat kro
SAVEPOINT after_wallet_topup; -- this is the point till where we have to 'rollback' {iske niche k saare changes ko undone krdo}

UPDATE accounts SET balance = balance + 10 WHERE id = 1;
-- Suppose an 'ERROR' occurs ==> This particular operation can be completed separately , won't hinder the rest of the process

ROLLBACK TO after_wallet_topup;  --'ROLLBACK point' mention kia hai & sirf 'ROLLBACK' nhi likha cause vrna poora sb kuch 'rollback' ho jata
COMMIT; 

-- This is done so that if any 'error' occurs then it won't lead to whole transaction failure , the 'error' prone part can later be fixed