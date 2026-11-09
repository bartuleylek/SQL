SELECT employee_id, employee_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary)
                FROM employees);