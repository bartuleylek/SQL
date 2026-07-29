SELECT product_id, product_name, price, rating
FROM Products
WHERE category IN ('Electronics', 'Computers') AND stock > 0 AND price <= 2000
ORDER BY rating DESC, price ASC, product_name ASC
LIMIT 5;