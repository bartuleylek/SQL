SELECT o.order_id, c.customer_name, o.order_date, o.amount 
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;

-- INNER JOIN returns only rows that have a matching value in both tables.