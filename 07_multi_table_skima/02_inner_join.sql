-- two table join
SELECT columns
FROM table_a
INNER JOIN table_b ON table_a.foreign_key = table_b.id;

-- Which user placed order 1?

SELECT orders.id AS order_id, users.full_name
FROM orders
INNER JOIN users ON orders.user_id = users.id
WHERE orders.id = 1;

-- Table aliases, to keep queries short
SELECT o.id AS order_id, u.full_name
FROM orders AS o
INNER JOIN users AS u ON o.user_id = u.id;

SELECT oi.order_id, p.name, oi.quantity
FROM order_items AS oi
INNER JOIN products AS p ON oi.product_id = p.id
WHERE oi.order_id = 1;