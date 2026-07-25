SELECT employee_id, name, department, salary
FROM Employees
WHERE department IN ('IT', 'Finance') AND salary > 60000;