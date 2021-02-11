/* AMount Spend in a Month Greater than 10000 */
SELECT DealerCode, DealerName,SUBSTRING(InvoiceDate,1,4) AS Year_no, SUBSTRING(InvoiceDate, 6, 2) AS Month_no, 
      SUM(CAST(GroPrice*QTY AS INT)),
      CASE
      WHEN SUM(CAST(GroPrice*QTY AS INT)) >=10000 THEN 'TOP'
      ELSE 'AVG'
      END Dealer_label
FROM orders_new
GROUP BY Year_no,Month_no, DealerCode