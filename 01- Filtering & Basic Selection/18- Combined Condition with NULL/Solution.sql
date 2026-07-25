SELECT employee_id, name, department
FROM Employees
WHERE department = 'IT' AND manager_id IS NULL;