-- COUNT(*) counts all rows, while COUNT(column) ignores NULL values. 
-- Aggregate functions such as AVG, SUM, MIN, and MAX also ignore NULL values.
SELECT COUNT(*) AS employee_count,
COUNT(bonus) AS bonus_employee_count,
AVG(bonus) AS average_bonus
FROM Employees;