WITH pepperoni_CTE (name, pizza_name) AS
    (SELECT name, pizza_name FROM person_order
    JOIN person ON person.id = person_id
    JOIN menu ON person_order.menu_id = menu.id
    WHERE gender = 'female' AND pizza_name = 'pepperoni pizza'),

    cheese_CTE (name, pizza_name) AS
    (SELECT name, pizza_name FROM person_order
    JOIN person ON person.id = person_id
    JOIN menu ON person_order.menu_id = menu.id
    WHERE gender = 'female' AND pizza_name = 'cheese pizza')

SELECT name FROM pepperoni_CTE WHERE name IN (SELECT name FROM cheese_CTE)
ORDER BY name;
