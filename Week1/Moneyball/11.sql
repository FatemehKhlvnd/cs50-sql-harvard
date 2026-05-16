SELECT
pl.first_name,
pl.last_name,
(s.salary * 1.0 / p.hits) AS "dollars per hit"
FROM players pl
JOIN salaries s ON pl.id = s.player_id
JOIN performances p ON pl.id = p.player_id AND s.year = p.year
WHERE s.year = 2001
AND p.hits > 0
ORDER BY "dollars per hit" ASC,
pl.first_name ASC,
pl.last_name ASC
LIMIT 10;
