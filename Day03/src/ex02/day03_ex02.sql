WITH notordered AS
    (SELECT id AS menu_id FROM menu
    EXCEPT
    SELECT menu_id FROM person_order
    ORDER BY menu_id)

SELECT pizza_name, price, name AS pizzeria_name
FROM notordered
JOIN menu ON menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY pizza_name, price;

-- SELECT pizza_name, price, pizzeria.name AS pizzeria_name
-- FROM menu
-- LEFT JOIN pizzeria ON pizzeria.id = pizzeria_id
-- WHERE menu.id NOT IN (SELECT menu_id FROM person_order)
-- ORDER BY pizza_name, price;