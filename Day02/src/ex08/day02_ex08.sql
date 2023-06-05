SELECT name AS person_name  FROM person_order
JOIN person ON person.id = person_id
JOIN menu ON person_order.menu_id = menu.id
WHERE gender = 'male'
    AND (address = 'Moscow' OR address = 'Samara')
    AND (pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza')
ORDER BY person_name DESC;