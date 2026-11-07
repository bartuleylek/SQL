SELECT o.order_id, c.customer_name, p.product_name, o.amount
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Products p ON o.product_id = p.product_id;


/*
INNER JOIN is used because we only need orders that have matching customer and product records.

o.order_id | o.customer_id | o.product_id | o.amount | c.customer_id | c.customer_name | p.product_id | p.product_name | p.category
-----------|---------------|--------------|----------|---------------|-----------------|--------------|----------------|-----------
101        | 1             | 10           | 1200     | 1             | Alice           | 10           | Laptop         | Electronics
102        | 2             | 20           | 800      | 2             | Bob             | 20           | Phone          | Electronics
103        | 1             | 30           | 400      | 1             | Alice           | 30           | Desk           | Furniture
104        | 3             | 10           | 1200     | 3             | Carol           | 10           | Laptop         | Electronics
*/