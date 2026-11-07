SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count, SUM(o.amount) AS total_amount
FROM Orders o
INNER JOIN Customers c ON c.customer_id = o.customer_id
INNER JOIN Products p ON o.product_id = p.product_id
WHERE o.status = 'completed' AND p.category = 'Electronics'
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_amount DESC;

/*
INNER JOIN → connects related tables
WHERE → filters rows
GROUP BY → groups rows by customer
COUNT / SUM → calculates aggregate values
HAVING → filters groups
ORDER BY → sorts the final result
*/

/*
INNER JOIN → putting the filter in WHERE is generally fine.
LEFT JOIN → whether a right-table filter is placed in ON or WHERE can be critical.
*/