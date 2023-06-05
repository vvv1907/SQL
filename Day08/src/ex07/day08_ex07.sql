BEGIN; -- session1
BEGIN; --session2
UPDATE person SET name = 'Irina' WHERE id = 1; --session1
UPDATE person SET name = 'Irina' WHERE id = 2; --session2
UPDATE person SET name = 'Irina' WHERE id = 2; --session1
UPDATE person SET name = 'Irina' WHERE id = 1; --session2
COMMIT; --session1
COMMIT; --session2
