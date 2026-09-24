-- Aggregate functions: COUNT, SUM,AVG,MIN,MAX

SELECT COUNT(*) FROM table_name;
SELECT SUM(column_name) FROM table_name;
SELECT AVG(column_name) FROM table_name;
SELECT MIN(column_name) FROM table_name;


-- on our real users table:

SELECT COUNT(*) FROM users;

SELECT MIN(created_at) FROM users;
SELECT MAX(created_at) FROM users;