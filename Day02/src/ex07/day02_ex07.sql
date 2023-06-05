SELECT pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person ON person.id = person_id
JOIN pizzeria ON pizzeria_id = pizzeria.id
JOIN menu ON pizzeria.id = menu.pizzeria_id
WHERE person.name = 'Dmitriy' AND visit_date = '2022-01-08' AND price < 800;
