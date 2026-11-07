SELECT c.customer_id, c.customer_name, o.order_id, o.amount 
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN returns all rows from the left table (Customers), and the matched rows from the right table (Orders).
-- A LEFT JOIN B → keep all rows from A.