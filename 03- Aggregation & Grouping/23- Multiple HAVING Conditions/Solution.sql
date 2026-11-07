SELECT customer_id,
COUNT(*) AS order_count,
SUM(amount) AS total_amount
FROM Orders
WHERE status = 'completed'
GROUP BY customer_id
HAVING COUNT(*) >= 4 AND SUM(amount) > 1000;