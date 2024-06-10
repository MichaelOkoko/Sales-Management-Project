/* Clean DIM_Customers Table */
SELECT 
  c.customerkey AS CustomerKey, 
  -- ,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname AS [First Name], 
  --[MiddleName]
  c.lastname AS [Last Name], 
  c.firstname + ' ' + lastname AS [Full Name], 
  -- Combined First and Last Name
  -- ,[NameStyle]
  -- ,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --Create male or female indicator (instead of M,F)
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  --,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  --,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.city AS [Customer City] --Joined in Customer City from Geography Table
FROM 
  dbo.DimCustomer AS c --alias table customer as c
  --
  Left Join dbo.DimGeography AS g ON g.geographykey = c.geographykey 
  -- alias DimGeography table a g
ORDER BY 
  CustomerKey ASC --Ordered the list by CustomerKey
