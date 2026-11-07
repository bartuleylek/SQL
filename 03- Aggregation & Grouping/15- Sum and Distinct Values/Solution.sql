SELECT COUNT(*) AS order_count,
COUNT(DISTINCT customer_id) AS customer_count,
SUM(amount) AS total_amount,
AVG(amount) AS average_amount
FROM Orders
WHERE status IN('completed','shipped');