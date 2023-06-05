WITH Female AS
    (SELECT pizzeria.name, gender FROM person_visits
    FULL JOIN person ON person.id = person_visits.person_id
    JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
    WHERE gender ='female'),

    Male AS
    (SELECT pizzeria.name, gender FROM person_visits
    FULL JOIN person ON person.id = person_visits.person_id
    JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
    WHERE gender ='male')

(SELECT name AS pizzeria_name FROM Female EXCEPT ALL SELECT name FROM Male)
UNION ALL
(SELECT name FROM Male EXCEPT ALL SELECT name FROM Female)
ORDER BY pizzeria_name;


