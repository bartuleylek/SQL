SELECT count(DISTINCT customer_id) AS completed_customer_count
FROM Orders
WHERE status = 'completed';