SELECT f1.friend_id
FROM friends f1
JOIN users u1 ON u1.id = f1.user_id
JOIN users u2 ON u2.id = (
    SELECT id FROM users WHERE username = 'exceptionalinspiration482'
)
WHERE u1.username = 'lovelytrust487'
AND f1.friend_id IN (
    SELECT friend_id
    FROM friends
    WHERE user_id = u2.id
);
