/* Hourly Amount Spent By dates and hours */
SELECT CreationDate, SUBSTRING(CreationDateTime, 12, 2) AS hours, SUM(CAST(GroPrice*QTY AS INT)) AS AmountSpentPerHour
FROM orders_new
GROUP BY CreationDate, hours