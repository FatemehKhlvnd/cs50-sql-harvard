SELECT s.salary
FROM salaries s
JOIN performances p ON s.player_id = p.player_id AND s.year = p.year
WHERE s.year = 2001
ORDER BY p.home_runs DESC
LIMIT 1;
