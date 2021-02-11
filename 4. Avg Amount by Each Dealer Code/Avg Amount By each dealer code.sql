/* Avg amount of each dealer according to the Dealer Code */
SELECT DealerCode, DealerName, AVG(CAST(GroPrice*QTY AS INT)) AS AVG_AmountSpent
FROM orders_new
GROUP BY DealerCode