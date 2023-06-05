INSERT INTO person_visits VALUES
    ((SELECT MAX(id) FROM person_visits) + 1,
    (SELECT id FROM person WHERE name = 'Denis'),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'), '2022-02-24');

INSERT INTO person_visits VALUES
    ((SELECT MAX(id) FROM person_visits) + 1,
    (SELECT id FROM person WHERE name = 'Irina'),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'), '2022-02-24');

--  DELETE FROM person_visits WHERE id = (SELECT MAX(id) FROM person_visits);

-- INSERT INTO person_visits
--         SELECT *, '2022-02-24'::date AS visit_date
--         FROM
--         (SELECT MAX(id) + 2 FROM person_visits) AS id,
--         (SELECT id FROM person WHERE name = 'Irina') AS person_id,
--         (SELECT id FROM pizzeria WHERE name = 'Dominos') AS pizzeria_id
--     UNION
--         SELECT *, '2022-02-24'::date AS visit_date
--         FROM
--         (SELECT MAX(id) + 1 FROM person_visits) AS id,
--         (SELECT id FROM person WHERE name = 'Denis') AS person_id,
--         (SELECT id FROM pizzeria WHERE name = 'Dominos') AS pizzeria_id;

-- DELETE FROM person_visits WHERE visit_date = '2022-02-24';