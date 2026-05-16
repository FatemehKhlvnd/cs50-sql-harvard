SELECT DISTINCT t.name
FROM performances p
JOIN teams t ON p.team_id = t.id
JOIN players pl ON p.player_id = pl.id
WHERE pl.first_name = 'Satchel'
AND pl.last_name = 'Paige';
