SELECT pizzeria.name,
       COUNT(pizzeria_id) AS count_of_orders,
       ROUND(AVG(price), 2) AS average_price,
       MAX(price) AS max_price,
       MIN(price) AS min_price
FROM pizzeria
JOIN menu ON menu.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.menu_id = menu.id
GROUP BY pizzeria.name
ORDER BY name;
