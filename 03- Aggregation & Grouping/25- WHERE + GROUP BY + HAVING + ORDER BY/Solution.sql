SELECT salesperson_id,
COUNT(*) AS sale_count,
SUM(amount) AS total_sales
FROM Sales
WHERE status = 'completed' AND amount >= 200
GROUP BY salesperson_id
HAVING COUNT(*) >= 5 AND SUM(amount) > 5000
ORDER BY total_sales DESC;