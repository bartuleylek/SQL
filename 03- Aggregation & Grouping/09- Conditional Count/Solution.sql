SELECT COUNT(*) AS cancelled_order_count
FROM Orders
WHERE status = 'cancelled' AND amount > 500;