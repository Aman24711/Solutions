/* Last Transaction according to the Dealer Code */
SELECT DealerCode, DealerName, MAX(InvoiceDate) AS Last_Date
FROM orders_new
GROUP BY DealerCode