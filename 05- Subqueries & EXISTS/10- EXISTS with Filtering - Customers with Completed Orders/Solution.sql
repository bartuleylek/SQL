SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE EXISTS(SELECT 1
             FROM Orders o
             WHERE c.customer_id = o.customer_id AND o.status = 'completed' AND o.amount > 500);

-- Outer query goes customer by customer. The subquery checks whether that customer has at least one qualifying order. If yes, EXISTS returns true.