CREATE VIEW hiredate_view  
AS   
SELECT p.FirstName, p.LastName, e.BusinessEntityID, e.HireDate  
FROM HumanResources.Employee e   
JOIN Person.Person AS p ON e.BusinessEntityID = p.BusinessEntityID;

CREATE VIEW DimEmployeeBirthDates AS  
SELECT FirstName, LastName, BirthDate   
FROM DimEmployee;

CREATE CLUSTERED INDEX IX_ProductVendor_VendorID ON Purchasing.ProductVendor (VendorID);

CREATE UNIQUE INDEX AK_UnitMeasure_Name
  ON Production.UnitMeasure(Name);

CREATE NONCLUSTERED INDEX "FIBillOfMaterialsWithEndDate"
ON Production.BillOfMaterials (ComponentID, StartDate)
WHERE EndDate IS NOT NULL;

CREATE DATABASE MyOptionsTest
COLLATE French_CI_AI;

CREATE USER [ContosoFritz];  
GO 

CREATE USER AbolrousHazem;

CREATE TABLE dbo.T1
(
    c1 INT,
    c2 VARCHAR(200)
);  