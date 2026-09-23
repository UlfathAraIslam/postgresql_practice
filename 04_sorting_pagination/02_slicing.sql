SELECT full_name FROM users ORDER BY full_name ASC LIMIT 3; -- just the first 3 rows
SELECT full_name FROM users ORDER BY full_name ASC LIMIT 3 OFFSET 3; -- skip 3, then take the next 3

SELECT * FROM table_name
ORDER BY column_name ASC; -- smallest / earliest first (default if omitted)

SELECT * FROM table_name
ORDER by column_name DESC; -- largest / latest first

SELECT * FROM table_name
ORDER BY column_name
LIMIT n; -- only the first n rows after sorting

SELECT * FROM table_name
ORDER BY column_name
LIMIT n OFFSET m; -- skip m rows, then take n rows


--  sort by more than one column
SELECT * FROM table_name ORDER BY column_a ASC, column_b DESC;