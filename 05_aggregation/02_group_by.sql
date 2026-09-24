SELECT group_column, COUNT(*)
FROM table_name
GROUP BY group_column;

SELECT date_trunc('month',created_at) AS signup_month,COUNT(*)
FROM users
GROUP BY signup_month;