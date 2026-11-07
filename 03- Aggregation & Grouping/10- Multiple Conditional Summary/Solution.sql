SELECT COUNT(*) AS completed_order_count,
SUM(amount) AS completed_total_amount,
AVG(amount) AS completed_average_amount,
MAX(amount) AS completed_highest_amount
FROM Orders
WHERE status = 'completed' AND amount >= 100;