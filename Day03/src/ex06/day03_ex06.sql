WITH tmp AS (SELECT menu.pizza_name, menu.price,
                      pizzeria.name, pizzeria.id
                    FROM menu
                    JOIN pizzeria
                    ON pizzeria.id = menu.pizzeria_id)

SELECT table_1.pizza_name AS pizza_name,
       table_1.name AS pizzeria_name_1,
       table_2.name AS pizzeria_name_2,
       table_1.price AS price
FROM tmp table_1
JOIN tmp table_2
ON table_1.pizza_name = table_2.pizza_name
AND table_1.price = table_2.price
AND table_1.id > table_2.id
ORDER BY pizza_name;


-- WITH list (pizza_name1, pizzeria_name1, price1,pizzeria_id1, pizza_name2, pizzeria_name2, price2, pizzeria_id2) AS
--     (SELECT t1.pizza_name, t1.name, t1.price, t1.pizzeria_id, t2.pizza_name, t2.name, t2.price, t2.pizzeria_id
--     FROM
--     (SELECT pizza_name, name, price, pizzeria_id FROM menu
--     JOIN pizzeria ON menu.pizzeria_id = pizzeria.id) AS t1
--     FULL JOIN
--     (SELECT pizza_name, name, price, pizzeria_id FROM menu
--     JOIN pizzeria ON menu.pizzeria_id = pizzeria.id) AS t2
--     ON t1.pizza_name = t2.pizza_name)
--
-- SELECT pizza_name1 AS pizza_name, pizzeria_name1, pizzeria_name2, price1 AS price FROM list
-- WHERE list.pizza_name1 = list.pizza_name2 AND price1 = price2 AND pizzeria_name1 != pizzeria_name2 AND pizzeria_id1 > pizzeria_id2
-- ORDER BY pizza_name;


-- WITH full_menu AS
--     (SELECT pizza_name, name, price, pizzeria_id FROM menu
--     JOIN
--     pizzeria ON menu.pizzeria_id = pizzeria.id)
--
-- SELECT f1.pizza_name AS pizza_name,
--        f1.name AS pizzeria_name1,
--        f2.name AS pizzeria_name2,
--        f1.price AS price
--     FROM full_menu AS f1
--     JOIN full_menu AS f2 on f1.pizzeria_id > f2.pizzeria_id AND f1.pizza_name = f2.pizza_name AND f1.price = f2.price
-- ORDER BY pizza_name;
