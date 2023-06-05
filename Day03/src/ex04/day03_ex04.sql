WITH Female AS
    (SELECT DISTINCT pizzeria.name AS pizzeria_name FROM person_order
    FULL JOIN person ON person.id = person_order.person_id
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    WHERE gender ='female'),

    Male AS
    (SELECT DISTINCT pizzeria.name AS pizzeria_name FROM person_order
    FULL JOIN person ON person.id = person_order.person_id
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    WHERE gender ='male')

SELECT pizzeria_name FROM Female WHERE pizzeria_name NOT IN (SELECT pizzeria_name FROM Male)
UNION
SELECT pizzeria_name FROM Male WHERE pizzeria_name NOT IN (SELECT pizzeria_name FROM Female)
ORDER BY pizzeria_name;