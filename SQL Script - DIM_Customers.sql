-- Cleansed DIM_Customers Table --
SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS 'First Name', 
  c.lastname AS 'Last Name', 
  c.firstname + ' ' + lastname AS 'Full Name',  -- Combined First and Last Name
  CASE  
  WHEN c.gender = 'M' THEN 'Male' 
  ELSE 'Female' 
  END AS Gender, -- Changing M and F to Male and Female respectively
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS Customer City -- Joined in Customer City from Geography Table
FROM 
  DimCustomer AS c
  LEFT JOIN dimgeography AS g 
  ON c.geographykey = g.geographykey 
ORDER BY 
  CustomerKey;
