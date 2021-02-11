/* Total Quantity By InvoiceDate */
SELECT InvoiceDate, SUM(CAST(GroPrice*QTY AS INT)) AS AmountSpentPerDay
FROM orders_new
GROUP BY InvoiceDate