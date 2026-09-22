-- LIKE - case sensitive
-- ILIKE - case insensitive

SELECT * FROM table_name WHERE column LIKE 'pattern';

SELECT * FROM table_name WHERE column ILIKE 'pattern';

SELECT full_name FROM users WHERE email ILIKE '%SATO%'