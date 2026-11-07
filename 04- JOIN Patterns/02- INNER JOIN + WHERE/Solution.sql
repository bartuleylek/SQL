SELECT o.order_id, c.customer_name, o.amount
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.status = 'completed';