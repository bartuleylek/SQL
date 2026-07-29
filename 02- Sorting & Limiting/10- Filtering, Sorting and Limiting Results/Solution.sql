SELECT employee_id, name, salary
FROM Employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 3;