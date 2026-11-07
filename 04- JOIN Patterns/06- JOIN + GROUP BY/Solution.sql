SELECT c.customer_id, c.customer_name, SUM(o.amount) AS total_amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;