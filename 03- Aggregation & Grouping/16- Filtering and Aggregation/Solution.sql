SELECT COUNT(*) as transaction_count,
COUNT(DISTINCT customer_id) AS customer_count,
SUM(amount) AS total_deposit,
MIN(amount) AS lowest_deposit,
MAX(amount) AS highest_deposit
FROM Transactions
WHERE transaction_type = 'deposit' AND status = 'successful' AND amount > 500;