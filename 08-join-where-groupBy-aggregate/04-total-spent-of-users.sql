SELECT u.full_name, SUM(oi.unit_price_cents * oi.quantity) AS total_spent_cents
FROM users AS u
JOIN orders AS o ON o.user_id = u.id
JOIN order_items AS oi ON oi.order_id = o.id
WHERE o.status = 'completed'
GROUP BY u.full_name
ORDER BY total_spent_cents DESC;