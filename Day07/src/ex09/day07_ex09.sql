SELECT person.address,
    ROUND(MAX(age::NUMERIC) - (MIN(age::NUMERIC)/MAX(age::NUMERIC)), 2) AS formula,
    ROUND(AVG(age::NUMERIC), 2) AS average,
    ROUND(MAX(age::NUMERIC) - MIN(age::NUMERIC)/MAX(age::NUMERIC), 2) > ROUND(AVG(age::NUMERIC), 2) AS comparison
FROM person
GROUP BY person.address
ORDER BY address;
