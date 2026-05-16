SELECT birth_country, COUNT(*) AS player_count
FROM players
GROUP BY birth_country
ORDER BY player_count DESC;
