SELECT
pl.id,
pl.first_name,
pl.last_name,
s.salary,
p.home_runs,
s.year
FROM players pl
JOIN salaries s ON pl.id = s.player_id
JOIN performances p ON pl.id = p.player_id AND s.year = p.year
ORDER BY pl.id ASC,
s.year DESC,
p.home_runs DESC,
s.salary DESC;
