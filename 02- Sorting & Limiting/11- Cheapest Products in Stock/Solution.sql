SELECT product_id, product_name, price
FROM Products
WHERE category = 'Electronics' AND stock > 0
ORDER BY price ASC
LIMIT 4;