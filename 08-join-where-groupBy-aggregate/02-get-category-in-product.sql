SELECT c.name, COUNT(p.id) AS total_products
FROM categories AS c
JOIN products AS p ON p.category_id = c.id
GROUP BY c.name;
