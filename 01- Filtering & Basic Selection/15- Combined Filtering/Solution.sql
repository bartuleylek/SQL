SELECT employee_id, name, salary
FROM Employees
WHERE department IN ('IT', 'Finance') AND salary BETWEEN 50000 AND 80000 AND manager_id IS NOT NULL;