SELECT department, 
COUNT(*) AS employee_count, 
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary
FROM Employees
GROUP BY department;