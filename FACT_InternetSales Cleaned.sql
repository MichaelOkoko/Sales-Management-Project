SELECT TOP (1000) [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
     -- ,[PromotionKey]
     -- ,[CurrencyKey]
     -- ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
     -- ,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM 
  [dbo].[FactInternetSales]

  WHERE
  -- we want just the year of OrderDateKey which is the first 4 integers
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE())  - 2
  --GETDATE will fetch todays date; Subtract 2 to get two years from date

  ORDER BY
  OrderDateKey ASC
