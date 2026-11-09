SELECT employee_id, employee_name, department, salary
FROM employees
WHERE department IN (SELECT department
                     FROM employees
                     GROUP BY department
                     HAVING AVG(salary) > 65000);