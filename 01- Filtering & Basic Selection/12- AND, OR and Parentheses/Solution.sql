SELECT employee_id, name, department, salary
FROM Employees
WHERE (department = 'IT' AND salary > 60000) OR (department = 'Finance' AND salary > 70000);