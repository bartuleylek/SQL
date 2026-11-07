SELECT SUM(amount)  AS completed_total_amount
FROM Orders
WHERE status = 'completed';