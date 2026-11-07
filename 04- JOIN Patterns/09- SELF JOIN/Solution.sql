-- Take each employee's manager_id and find the person in the same table whose employee_id matches that value.
SELECT e.employee_name, m.employee_name AS manager_name
FROM Employees e
INNER JOIN Employees m ON e.manager_id = m.employee_id;

/*
Logical result after SELF JOIN:

e.employee_id | e.employee_name | e.manager_id | m.employee_id | m.employee_name | m.manager_id
--------------|-----------------|--------------|---------------|-----------------|-------------
2             | Bob             | 1            | 1             | Alice           | NULL
3             | Carol           | 1            | 1             | Alice           | NULL
4             | David           | 2            | 2             | Bob             | 1
5             | Emma            | 2            | 2             | Bob             | 1
*/