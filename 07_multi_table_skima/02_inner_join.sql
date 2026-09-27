-- two table join
SELECT columns
FROM table_a
INNER JOIN table_b ON table_a.foreign_key = table_b.id;

-- Which user placed order 1?

SELECT orders.id AS order_id, users.full_name
FROM orders
INNER JOIN users ON orders.user_id = users.id
WHERE orders.id = 1;