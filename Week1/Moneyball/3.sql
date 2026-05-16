SELECT p.year, p.home_runs
FROM performances p
JOIN players pl ON p.player_id = pl.id
WHERE pl.first_name = 'Ken'
AND pl.last_name = 'Griffey'
AND pl.birth_year = 1969
ORDER BY p.year DESC;
