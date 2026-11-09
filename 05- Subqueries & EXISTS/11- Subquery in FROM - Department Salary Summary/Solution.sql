/*
First, create a subquery that calculates the average salary for each department.
Then treat that subquery result like a temporary table and filter it in the outer query.
*/
-- A subquery in FROM creates a temporary result set that the outer query can query like a table.

SELECT department, average_salary
FROM (SELECT department, AVG(salary) AS average_salary
      FROM Employees
      GROUP BY department) AS department_summary
WHERE average_salary > 65000;