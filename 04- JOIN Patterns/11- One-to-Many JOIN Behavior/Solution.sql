SELECT c.customer_name, o.order_id, o.amount
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;

/*
Logical result after INNER JOIN:

o.order_id | o.customer_id | o.amount | c.customer_id | c.customer_name
-----------|---------------|----------|---------------|----------------
101        | 1             | 250      | 1             | Alice
102        | 2             | 400      | 2             | Bob
103        | 1             | 150      | 1             | Alice
104        | 3             | 700      | 3             | Carol
105        | 1             | 300      | 1             | Alice

1 customer + 3 matching orders --> 3 JOIN result rows
Repeated customer rows are not duplicates; each row represents a different matching order.
*/