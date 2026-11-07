SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count
FROM Customers c
INNER JOIN  Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1;