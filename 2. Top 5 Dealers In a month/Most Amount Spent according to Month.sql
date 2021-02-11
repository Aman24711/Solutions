/* After grouping the data according to months it's found that there are only two months, November (11) and December (12) */
SELECT CAST(GroPrice*QTY AS INT) AS AmountSpent, SUBSTRING(InvoiceDate, 6 , 2) AS Month_no
FROM orders_new
WHERE SUBSTRING(InvoiceDate, 6 , 2) = '11'
ORDER BY AmountSpent DESC
LIMIT 5;

SELECT CAST(GroPrice*QTY AS INT) AS AmountSpent, SUBSTRING(InvoiceDate, 6 , 2) AS Month_no
FROM orders_new
WHERE SUBSTRING(InvoiceDate, 6 , 2) = '12'
ORDER BY AmountSpent DESC
LIMIT 5;




 