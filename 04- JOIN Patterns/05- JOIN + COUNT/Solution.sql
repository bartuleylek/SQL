SELECT c.customer_id, c.customer_name, COUNT(o.order_id)
FROM Customers c
INNER JOIN Orders o ON C.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;