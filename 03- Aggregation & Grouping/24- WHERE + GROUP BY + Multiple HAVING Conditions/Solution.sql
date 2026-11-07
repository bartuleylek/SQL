SELECT department,
COUNT(*) AS employee_count,
AVG(salary) AS average_salary
FROM Employees
WHERE salary > 50000
GROUP BY department
HAVING COUNT(*) >= 3 AND AVG(salary) > 60000;