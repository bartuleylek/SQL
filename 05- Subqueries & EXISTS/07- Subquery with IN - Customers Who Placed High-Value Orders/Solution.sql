SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE c.customer_id IN (SELECT o.customer_id 
                        FROM Orders o
                        WHERE o.amount  > 500);

-- IN checks whether a value exists in the set returned by the subquery.