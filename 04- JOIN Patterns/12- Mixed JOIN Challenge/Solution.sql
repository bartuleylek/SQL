SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count, SUM(o.amount) AS total_amount
FROM Orders o
INNER JOIN Customers c ON c.customer_id = o.customer_id
INNER JOIN Products p ON o.product_id = p.product_id
WHERE o.status = 'completed' AND p.category = 'Electronics'
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_amount DESC;

/*
INNER JOIN --> connects related tables
WHERE --> filters rows
GROUP BY --> groups rows by customer
COUNT / SUM --> calculates aggregate values
HAVING --> filters groups
ORDER BY --> sorts the final result
*/

/*
INNER JOIN --> putting the filter in WHERE is generally fine.
LEFT JOIN --> whether a right-table filter is placed in ON or WHERE can be critical.
*/

/*
o.order_id | o.customer_id | o.product_id | o.status  | o.amount | c.customer_id | c.customer_name | c.city  | p.product_id | p.product_name | p.category
-----------|---------------|--------------|-----------|----------|---------------|-----------------|---------|--------------|----------------|------------
101        | 1             | 10           | completed | 1200     | 1             | Alice           | London  | 10           | Laptop         | Electronics
102        | 1             | 20           | completed | 800      | 1             | Alice           | London  | 20           | Phone          | Electronics
103        | 1             | 30           | completed | 400      | 1             | Alice           | London  | 30           | Desk           | Furniture
104        | 2             | 10           | completed | 1200     | 2             | Bob             | Paris   | 10           | Laptop         | Electronics
105        | 2             | 40           | pending   | 600      | 2             | Bob             | Paris   | 40           | Tablet         | Electronics
106        | 3             | 20           | completed | 800      | 3             | Carol           | Berlin  | 20           | Phone          | Electronics
107        | 3             | 40           | completed | 600      | 3             | Carol           | Berlin  | 40           | Tablet         | Electronics
108        | 3             | 30           | completed | 400      | 3             | Carol           | Berlin  | 30           | Desk           | Furniture
109        | 4             | 10           | cancelled | 1200     | 4             | David           | Rome    | 10           | Laptop         | Electronics
*/