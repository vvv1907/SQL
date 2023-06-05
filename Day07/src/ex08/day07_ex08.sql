SELECT person.address, pizzeria.name, COUNT(person_order.person_id) AS count_of_orders
FROM  person
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY person.address, pizzeria.name
ORDER BY address, name;
