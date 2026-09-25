ROUND(number,decimals) --round to a number of decimal places
CEIL(number) -- round up to the nearest whole number
FLOOR(number) -- round down to the nearest whole number
ABS(number) -- absolute (always positive) value

-- The storefront needs a real dollar price, not raw cents:

SELECT name,ROUND(price_cents / 100.0,2) AS price_dollars
FROM products WHERE id = 4