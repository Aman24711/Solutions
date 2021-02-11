/* 2nd most amount spent */
SELECT DealerCode, DealerName, CAST(GroPrice*QTY AS INT) AS AmountSpent 
FROM orders_new
ORDER BY AmountSpent DESC
LIMIT 2 