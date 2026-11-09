SELECT p.product_id, p.product_name, p.category, p.price
FROM Products p
WHERE p.price >(SELECT AVG(p2.price)
                 FROM Products p2
                 WHERE p.category = p2.category);

-- For each outer product, the subquery calculates the average price of products in the same category only.