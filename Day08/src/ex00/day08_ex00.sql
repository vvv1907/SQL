SHOW TRANSACTION ISOLATION LEVEL; -- session1
BEGIN ISOLATION LEVEL READ COMMITTED; -- session1
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';-- session1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';-- session1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';-- session2
COMMIT;-- session1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';-- session2
