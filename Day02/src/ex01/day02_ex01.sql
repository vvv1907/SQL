SELECT visit_d AS missing_date
FROM (SELECT gs::date AS visit_d FROM generate_series('2022-01-01', '2022-01-10', '1 day'::interval) AS gs) AS t1
LEFT JOIN (SELECT visit_date FROM person_visits WHERE (person_id = 1 OR person_id = 2 )) AS t2
ON t2.visit_date = visit_d
WHERE visit_date IS NULL
ORDER BY visit_d;