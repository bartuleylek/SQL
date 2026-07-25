SELECT employee_id, name, department, salary
FROM Employees
WHERE department IN ('IT', 'Finance') AND (salary BETWEEN 60000 AND 90000) AND (manager_id IS NULL OR name LIKE 'A%');