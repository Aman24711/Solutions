/* Dealers with individual amount greater than 50000 according to different dealer code (not name) */
SELECT DIstinct(DealerCode), DealerName, (CAST(GroPrice*QTY AS INT)) AS TotalAmountSpent 
FROM orders_new
GROUP BY DealerCode
HAVING  TotalAmountSpent >= 50000