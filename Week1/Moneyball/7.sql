SELECT pl.first_name, pl.last_name
FROM salaries s
JOIN players pl ON s.player_id = pl.id
ORDER BY s.salary DESC
LIMIT 1;
