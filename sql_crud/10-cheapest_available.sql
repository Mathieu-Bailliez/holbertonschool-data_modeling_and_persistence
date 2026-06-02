SELECT title, price
FROM books
ORDER BY price ASC
WHERE STOCK > 0
LIMIT 4;
