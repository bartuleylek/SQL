SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count
FROM Customers c
INNER JOIN  Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1;

/*
WHERE filters rows before grouping.
HAVING filters groups after aggregation.

Aggregate functions such as COUNT, SUM, and AVG are filtered with HAVING, not WHERE.

Logical result after INNER JOIN

c.customer_id | c.customer_name | o.order_id | o.customer_id | o.amount
--------------|-----------------|------------|---------------|---------
1             | Alice           | 101        | 1             | 250
1             | Alice           | 103        | 1             | 150
1             | Alice           | 105        | 1             | 300
2             | Bob             | 102        | 2             | 400
2             | Bob             | 106        | 2             | 500
3             | Carol           | 104        | 3             | 700
*/