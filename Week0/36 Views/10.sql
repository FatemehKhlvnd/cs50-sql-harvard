SELECT artist, AVG(brightness) AS avg_brightness
FROM views
GROUP BY artist
ORDER BY avg_brightness DESC;
