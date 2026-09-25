now() -- current timestamp
EXTRACT(field FROM timestamp_column) -- pull out year, month,day,etc.
date_trunc('unit',timestamp_column)
AGE(timestamp_column) -- how much time has passed since then

SELECT full_name, AGE(created_at) AS member_for
FROM users WHERE id = 1