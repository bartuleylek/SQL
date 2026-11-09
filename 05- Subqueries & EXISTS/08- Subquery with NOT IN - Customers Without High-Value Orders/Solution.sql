SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE c.customer_id NOT IN (SELECT o.customer_id
                            FROM Orders o
                            WHERE o.amount > 500);