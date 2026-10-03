SELECT table_a.group_column, SUM(table_b.value_column)
FROM table_a
JOIN table_b ON table_b.a_id = table_a.id
GROUP BY table_a.group_column;