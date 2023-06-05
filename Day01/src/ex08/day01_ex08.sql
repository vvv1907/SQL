SELECT order_date, CONCAT(name, ' (age:', age, ')') AS person_information
FROM
	(SELECT person_id AS id, order_date FROM person_order) AS table1
NATURAL JOIN person
ORDER BY order_date , person_information;