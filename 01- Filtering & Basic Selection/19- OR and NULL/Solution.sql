SELECT employee_id, name, department
FROM Employees
WHERE department = 'Finance' OR manager_id IS NULL;