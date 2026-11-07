SELECT c.customer_id, c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

/*
LEFT JOIN keeps all customers.
Customers without matching orders get NULL on the Orders side.

Logical result after LEFT JOIN

c.customer_id | customer_name | city   | order_id | o.customer_id | amount
--------------|---------------|--------|----------|---------------|-------
1             | Alice         | London | 101      | 1             | 250
1             | Alice         | London | 103      | 1             | 150
2             | Bob           | Paris  | 102      | 2             | 400
3             | Carol         | Berlin | 104      | 3             | 700
4             | David         | Rome   | NULL     | NULL          | NULL

Unmatched records (Customers with no Orders):

customer_id  customer_name
4            David
*/