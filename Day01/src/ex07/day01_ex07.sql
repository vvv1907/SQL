SELECT order_date, CONCAT(name, ' (age:', age, ')') AS person_information
FROM person
JOIN person_order
ON person.id = person_id
ORDER BY order_date, person_information;