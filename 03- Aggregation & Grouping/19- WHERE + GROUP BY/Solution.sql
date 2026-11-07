SELECT status,
COUNT(order_id) AS order_count,
SUM(amount) AS total_amount,
AVG(amount) AS average_amount
FROM Orders
WHERE amount >= 100
GROUP BY status;