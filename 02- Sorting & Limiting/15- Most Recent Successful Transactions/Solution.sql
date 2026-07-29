SELECT transaction_id, customer_id, amount, transaction_date
FROM Transactions
WHERE status = 'successful' AND amount >= 1000
ORDER BY transaction_date DESC, amount DESC
LIMIT 10;