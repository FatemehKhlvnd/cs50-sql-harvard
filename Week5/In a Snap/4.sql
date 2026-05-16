SELECT u.username
FROM users u
JOIN messages m ON u.id = m.to_user_id
GROUP BY u.id
ORDER BY COUNT(*) DESC
LIMIT 1;
