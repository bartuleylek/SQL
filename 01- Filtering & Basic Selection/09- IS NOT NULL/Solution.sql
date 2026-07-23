SELECT employee_id, name, manager_id
FROM Employees
WHERE manager_id IS NOT NULL;