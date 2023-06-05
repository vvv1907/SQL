WITH t1 AS
(SELECT menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name, person.name AS person_name
	FROM person_order
	LEFT JOIN person ON person.id = person_id
	LEFT JOIN menu ON menu.id = menu_id
	LEFT JOIN pizzeria ON pizzeria.id = pizzeria_id)

SELECT pizza_name, pizzeria_name
FROM t1
WHERE person_name = 'Denis' OR person_name = 'Anna'
ORDER BY pizza_name, pizzeria_name;