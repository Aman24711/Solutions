/* Dealers with amount greater than 50000 according to different dealer code (not name) */
SELECT DealerCode, DealerName, SUM(CAST(GroPrice*QTY AS INT)) AS TotalAmountSpent 
FROM orders_new
GROUP BY DealerCode
HAVING  TotalAmountSpent >= 50000