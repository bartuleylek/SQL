SELECT user_id, username, created_at
FROM Users
WHERE status = 'active' AND country = 'Turkey'
ORDER BY created_at DESC, user_id DESC
LIMIT 5;