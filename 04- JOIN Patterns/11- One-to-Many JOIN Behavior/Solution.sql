SELECT c.customer_name, o.order_id, o.amount
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;