SELECT pizza_name, name AS pizzeria_name, price
FROM menu
JOIN
pizzeria ON pizzeria_id = pizzeria.id
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;
