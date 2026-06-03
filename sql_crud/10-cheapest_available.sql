SELECT title, price
FROM books
WHERE STOCK > 0
ORDER BY price ASC
LIMIT 4;
