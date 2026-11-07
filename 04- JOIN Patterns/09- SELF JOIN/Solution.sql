-- Take each employee's manager_id and find the person in the same table whose employee_id matches that value.
SELECT e.employee_id, e.employee_name, m.employee_name AS manager_name
FROM Employees e
INNER JOIN Employees m ON e.manager_id = m.employee_id;