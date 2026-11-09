SELECT e.employee_id, e.employee_name, e.department, e.salary
FROM employees e
WHERE e.salary > (SELECT AVG(salary)
                  FROM employees e2
                  WHERE e.department = e2.department);

-- In the subquery, use only employees who belong to the same department as the employee currently being evaluated by the outer query.