-- Cleansed FACT_InternetSales Table --
SELECT 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesAmount
FROM 
  FactInternetSales
WHERE 
  OrderDateKey >= CURRENT_DATE - interval '2 year' -- Ensures we always only bring two years of date from extraction.
ORDER BY
  OrderDateKey;
