SELECT DISTINCT pl.first_name, pl.last_name
FROM players pl
JOIN salaries s ON pl.id = s.player_id
JOIN performances p ON pl.id = p.player_id AND s.year = p.year
WHERE s.year = 2001
AND (
    (s.salary / p.hits) IN (
        SELECT MIN(s2.salary / p2.hits)
        FROM salaries s2
        JOIN performances p2 ON s2.player_id = p2.player_id
        WHERE s2.year = 2001 AND p2.hits > 0
    )
    OR
    (s.salary / p.rbis) IN (
        SELECT MIN(s3.salary / p3.rbis)
        FROM salaries s3
        JOIN performances p3 ON s3.player_id = p3.player_id
        WHERE s3.year = 2001 AND p3.rbis > 0
    )
)
ORDER BY pl.id ASC;
