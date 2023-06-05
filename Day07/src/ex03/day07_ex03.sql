SELECT pizzeria.name, sum (order1.count + visit1.count) AS total_count
FROM pizzeria
FULL JOIN (
    SELECT pizzeria.name, COUNT(person_order.person_id) AS count
    FROM pizzeria
    FULL JOIN menu ON menu.pizzeria_id = pizzeria.id
    FULL JOIN person_order ON person_order.menu_id = menu.id
    GROUP BY pizzeria.name ) AS order1 ON pizzeria.name = order1.name
FULL JOIN (
    SELECT pizzeria.name, COUNT(person_visits.person_id) AS count
    FROM pizzeria
    FULL JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
    GROUP BY pizzeria.name ) AS visit1 ON order1.name = visit1.name
GROUP BY pizzeria.name
ORDER BY total_count DESC;
