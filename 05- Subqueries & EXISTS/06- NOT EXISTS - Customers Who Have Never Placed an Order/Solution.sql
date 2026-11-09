SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE NOT EXISTS (SELECT 1
                  FROM Orders o
                  WHERE c.customer_id = o.customer_id);

/*
EXISTS     --> at least one matching row exists
NOT EXISTS --> no matching row exists
*/