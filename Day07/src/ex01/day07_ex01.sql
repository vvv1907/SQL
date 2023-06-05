SELECT person.name, count_of_visits
    FROM person
        JOIN (SELECT person_id, COUNT(*) AS count_of_visits
FROM person_visits
GROUP BY person_id) AS t1 ON person.id = t1.person_id
ORDER BY 2 DESC
LIMIT 5;
