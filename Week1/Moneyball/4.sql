SELECT pl.first_name, pl.last_name, s.salary
FROM salaries s
JOIN players pl ON s.player_id = pl.id
WHERE s.year = 2001
ORDER BY s.salary ASC, pl.first_name ASC, pl.last_name ASC, pl.id ASC
LIMIT 50;
