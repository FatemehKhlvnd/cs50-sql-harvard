SELECT d.name, SUM(s.pupils) AS total_pupils
FROM schools s
JOIN districts d ON s.district_id = d.id
GROUP BY d.name;
