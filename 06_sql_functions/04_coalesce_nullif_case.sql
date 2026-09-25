COALESCE(value1, value2, ...) -- returns the first value that isn't NULL

NULLIF(value1,value2) -- returns NULL if the two values are equal, otherwise value1

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE fallback_result
END

SELECT name,COALESCE(discount_note,'No current discount') AS discount_note
FROM products;

SELECT name,
    CASE WHEN stock_qty = 0 THEN 'Out of stock' ELSE 'In stock' END AS availability
FROM products WHERE id = 3;