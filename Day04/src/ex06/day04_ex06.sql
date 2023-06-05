CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN person_visits
ON person_visits.pizzeria_id = pizzeria.id
JOIN person
ON person.id = person_visits.person_id
JOIN menu
ON menu.pizzeria_id = pizzeria.id
WHERE menu.price < 800
AND person.name = 'Dmitriy'
AND person_visits.visit_date = '2022-01-08';
