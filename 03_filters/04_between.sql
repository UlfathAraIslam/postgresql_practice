-- BETWEEN - match an inclusive range
SELECT * FROM table_name WHERE column BETWEEN low AND high;

SELECT full_name FROM users WHERE id BETWEEN (2 AND 4);