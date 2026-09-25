UPPER(text) --convert to upper case
LOWER(text) -- convert to lower case
LENGTH(text)  -- number of characters
TRIM(text) -- remove leading/trailing whitespace
text1 || text2 -- concatenate (join) two strings
SUBSTRING(text FROM start FOR len) --extract part of a string

SELECT full_name || '<' || email || '>' AS display
FROM users WHERE id = 1;