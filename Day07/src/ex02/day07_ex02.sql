(SELECT pizzeria.name, COUNT(person_order.person_id) AS count, 'order' AS action_type
FROM pizzeria
JOIN menu ON menu.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.menu_id = menu.id
GROUP BY pizzeria.name ORDER BY count DESC LIMIT 3)

UNION ALL

(SELECT pizzeria.name, COUNT(person_visits.person_id) AS count, 'visit' AS action_type
FROM pizzeria
JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
GROUP BY pizzeria.name ORDER BY count DESC LIMIT 3)

ORDER BY action_type ASC, COUNT DESC;
