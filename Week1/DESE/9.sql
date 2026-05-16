SELECT d.name
FROM districts d
JOIN schools s ON s.district_id = d.id
GROUP BY d.name
ORDER BY SUM(s.pupils) ASC
LIMIT 1;
