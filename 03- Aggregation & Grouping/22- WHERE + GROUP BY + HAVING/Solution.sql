SELECT customer_id,
COUNT(*) AS order_count,
SUM(amount) AS total_amount
FROM Orders
WHERE status = 'completed' AND amount > 100
GROUP BY customer_id
HAVING COUNT(*) >= 3;