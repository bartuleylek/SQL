SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

/*
The main reason I use GROUP BY c.customer_id, c.customer_name is that both columns are included in the SELECT statement.
For clear and portable SQL, it is recommended to include all non-aggregated columns in the GROUP BY clause.

Logical result after INNER JOIN

c.customer_id | c.customer_name | o.order_id | o.customer_id | o.amount
--------------|-----------------|------------|---------------|---------
1             | Alice           | 101        | 1             | 250
1             | Alice           | 103        | 1             | 150
1             | Alice           | 105        | 1             | 300
2             | Bob             | 102        | 2             | 400
3             | Carol           | 104        | 3             | 700s


GROUP BY c.customer_id, c.customer_name

(1, Alice) → 3 rows
(2, Bob)   → 1 row
(3, Carol) → 1 row

COUNT(o.order_id)

Alice → 3
Bob   → 1
Carol → 1

Final result:
customer_id | customer_name | order_count
------------|---------------|------------
1           | Alice         | 3
2           | Bob           | 1
3           | Carol         | 1
*/