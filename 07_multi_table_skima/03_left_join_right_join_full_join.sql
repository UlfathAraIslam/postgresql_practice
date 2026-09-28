SELECT u.full_name, o.id AS order_id, o.status
FROM users AS u
LEFT JOIN orders AS o ON o.user_id = u.id
ORDER BY u.id;