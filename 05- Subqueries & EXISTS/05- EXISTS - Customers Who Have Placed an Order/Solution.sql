-- For each customer in the outer query, check whether at least one matching order exists in the Orders table.
-- EXISTS returns TRUE as soon as at least one matching row is found.
SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE EXISTS (SELECT 1
              FROM Orders o
              WHERE c.customer_id = o.customer_id);