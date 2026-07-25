SELECT employee_id, name, department
FROM Employees
WHERE department NOT IN ('Sales', 'HR');