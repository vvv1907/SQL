INSERT INTO person_visits VALUES
    ((SELECT MAX(id) FROM person_visits) + 1,
    (SELECT id FROM person WHERE name = 'Dmitriy'),
     (SELECT pizzeria_id FROM menu WHERE menu.price < 800
        AND menu.pizzeria_id NOT IN (SELECT id FROM mv_dmitriy_visits_and_eats
        JOIN pizzeria ON pizzeria.name = mv_dmitriy_visits_and_eats.pizzeria_name)
        LIMIT 1),
     '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- DELETE FROM person_visits WHERE id = (SELECT MAX(id) FROM person_visits);