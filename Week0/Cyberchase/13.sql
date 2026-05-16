-- Episodes aired after 2010 with no topic

SELECT title
FROM episodes
WHERE air_date > '2010-01-01'
AND topic IS NULL;
