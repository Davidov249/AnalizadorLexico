SELECT *
FROM Production.Product
ORDER BY Name ASC;

SELECT Name, ProductNumber, ListPrice AS Price
FROM Production.Product 
WHERE ProductLine = 'R' 
AND DaysToManufacture < 4
ORDER BY Name ASC;

SELECT p.Name AS ProductName
FROM Production.Product AS p 
INNER JOIN Sales.SalesOrderDetail AS sod
ON p.ProductID = sod.ProductID 
ORDER BY ProductName DESC;

SELECT SalesOrderID, SUM(LineTotal) AS SubTotal
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
ORDER BY SalesOrderID
GO

SELECT ProductID, SpecialOfferID, AVG(UnitPrice) AS [Average Price], 
SUM(LineTotal) AS SubTotal
FROM Sales.SalesOrderDetail
GROUP BY ProductID, SpecialOfferID
ORDER BY ProductID
GO

SELECT ProductModelID, AVG(ListPrice) AS [AverageListPrice]
FROM Production.Product
WHERE ListPrice > 1000
GROUP BY ProductModelID
ORDER BY ProductModelID;


SELECT AVG(OrderQty) AS [AverageQuantity], 
FROM Sales.SalesOrderDetail
GROUP BY (OrderQty * UnitPrice)
ORDER BY (OrderQty * UnitPrice) DESC;


SELECT ProductID, AVG(UnitPrice) AS [AveragePrice]
FROM Sales.SalesOrderDetail
WHERE OrderQty > 10
GROUP BY ProductID
ORDER BY AVG(UnitPrice)
GO

SELECT ProductID 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(OrderQty) > 5
ORDER BY ProductID
GO

SELECT SalesOrderID, CarrierTrackingNumber   
FROM Sales.SalesOrderDetail  
GROUP BY SalesOrderID, CarrierTrackingNumber  
HAVING CarrierTrackingNumber LIKE '4BD%'  
ORDER BY SalesOrderID ;  

SELECT ProductID 
FROM Sales.SalesOrderDetail
WHERE UnitPrice < 25.00
GROUP BY ProductID
HAVING AVG(OrderQty) > 5
ORDER BY ProductID
GO

SELECT ProductID, AVG(OrderQty) AS AverageQuantity, SUM(LineTotal) AS Total
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) > 1000000.00
AND AVG(OrderQty) < 3
GO

SELECT ProductID, SUM(LineTotal) AS Total
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING COUNT(*) > 1500
GO