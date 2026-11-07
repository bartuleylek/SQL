SELECT MIN(price) AS lowest_price, MAX(price) AS highest_price,
AVG(price) AS average_price
FROM Products
WHERE category = 'Electronics' AND stock > 0;