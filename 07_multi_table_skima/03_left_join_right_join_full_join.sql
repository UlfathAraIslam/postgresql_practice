SELECT u.full_name, o.id AS order_id, o.status
FROM users AS u
LEFT JOIN orders AS o ON o.user_id = u.id

ORDER BY u.id;
SELECT u.full_name, o.id
FROM orders AS o
RIGHT JOIN users AS u ON o.user_id = u.id;

SELECT u.full_name, o.id
FROM users AS u
FULL JOIN orders AS o ON o.user_id = u.id
ORDER BY u.id;