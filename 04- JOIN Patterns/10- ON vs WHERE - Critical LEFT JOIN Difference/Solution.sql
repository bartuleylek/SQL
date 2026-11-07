-- ON controls which rows match during the JOIN, while WHERE filters rows after the JOIN. If we used WHERE o.status = 'completed', customers without completed orders would be removed, making the LEFT JOIN behave like an INNER JOIN.
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id AND o.status = 'completed'
GROUP BY c.customer_id, c.customer_name;