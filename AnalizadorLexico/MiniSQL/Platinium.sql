ALTER TABLE HO.KA.JA

ALTER COLUMN HOAL
HOL.AD (7,7)
COLLATE ID
NOT NULL
;

$
ALTER TABLE FDJADASJ ADD PurchaseOrderID INT NOT NULL, LineNumber SMALLINT NOT NULL;


ALTER TABLE AJAJA DROP CONSTRAINT IF EXISTS HOLA, ADIOS, HOLA, COLUMN IF EXISTS AIODS,HOLA;
CREATE TABLE dbo.PurchaseOrderDetail
(
    PurchaseOrderID INT NOT NULL
        REFERENCES Purchasing.PurchaseOrderHeader(PurchaseOrderID),
   
    LineNumber SMALLINT NOT NULL,
    
    LineNumber SMALLINT NOT NULL,

    ProductID INT NULL
        REFERENCES Production.Product(ProductID),
    OrderQty SMALLINT NULL,
    ReceivedQty FLOAT NULL,
    RejectedQty FLOAT NULL,
    ModifiedDate INT NOT NULL,
    LineTotal AS ((UnitPrice*OrderQty)),
    StockedQty AS ((ReceivedQty-RejectedQty)),
    CONSTRAINT PK_PurchaseOrderDetail_PurchaseOrderID_LineNumber
               PRIMARY KEY CLUSTERED (PurchaseOrderID, LineNumber),
               INDEX hoa NONCLUSTERED (HOLA ASC) ON PRIMARY3 (id)
              
)
ON PRIMARY3;

CREATE TABLE T1
    (c1 INT PRIMARY KEY,
    c2 VARCHAR(50) NULL,
    c3 INT NULL);

CREATE TABLE PartitionTable (col1 INT, col2 CHAR(10))
    ON myRangePS1 (col1) ;

CREATE TABLE hola.adios (
  col1 INT PRIMARY KEY
);


CREATE TABLE Department_History
(
    DepartmentNumber CHAR(10) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    ManagerID INT NULL,
    ParentDepartmentNumber CHAR(10) NULL,
    SysStartTime SMALLINT NOT NULL,
    SysEndTime INTEGER NOT NULL
);
CREATE TABLE dbo.Employee (EmployeeID INT
PRIMARY KEY CLUSTERED);


CREATE TABLE t1 
(
    c1 INT, 
    INDEX ix_1 NONCLUSTERED (c1)
);

CREATE TABLE t2 
(
    c1 INT, 
    c2 INT INDEX ix_1 NONCLUSTERED
);


SELECT NAME, SUM(SALARY) FROM Employee 
GROUP BY NAME
HAVING SUM(SALARY)>3000; 

SELECT *  
FROM DimEmployee  
ORDER BY LastName; 

SELECT e.*  
FROM DimEmployee AS e  
ORDER BY LastName;  

SELECT FirstName, LastName, StartDate AS FirstDay  
FROM DimEmployee   
ORDER BY LastName;  

SELECT FirstName, LastName, StartDate AS FirstDay  
FROM DimEmployee   
WHERE EndDate IS NOT NULL   
AND MaritalStatus = 'M'  
ORDER BY LastName;  

SELECT DISTINCT Title  
FROM DimEmployee  
ORDER BY Title;

SELECT SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY (OrderDateKey * 10); 

SELECT OrderDateKey, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY OrderDateKey  
HAVING OrderDateKey > 20010000  
ORDER BY OrderDateKey;  


SELECT OrderDateKey, PromotionKey, AVG(SalesAmount) AS AvgSales, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY OrderDateKey, PromotionKey  
ORDER BY OrderDateKey; 

SELECT OrderDateKey, SUM(SalesAmount) AS TotalSales  
FROM FactInternetSales  
GROUP BY OrderDateKey  
ORDER BY OrderDateKey; 

SELECT FirstName, LastName, BaseRate, 40 * BaseRate AS GrossPay  
FROM DimEmployee  
ORDER BY LastName; 

INSERT INTO Cities (Location  )
VALUES ( dbo.CreateNewPoint+(x), (Y)  );

INSERT 
TOP(3) PERCENT INTO Production.UnitMeasure 

VALUES ('FT', 'Feet', '20080414');  

INSERT INTO Production.UnitMeasure  
VALUES ('FT2',2*3443, holi, 'Square Feet ', '20080923'), ('Y', 'Yards', '20080923')
    , ('Y3', 'Cubic Yards', '20080923'); 

    INSERT INTO T1 (column_1,column_2)   
    VALUES (-99, 'Explicit identity value', -9*-8-96); 

INSERT INTO Production.UnitMeasure (Name, UnitMeasureCode,  
    ModifiedDate)  
VALUES ('Square Yards', 'Y2');  


INSERT INTO dbo.T1 (column_2, column_4)   
    DEFAULT VALUES;

UPDATE dbo.Table2   
SET dbo = dbo.Table2.ColB + dbo.Table1.ColB  
FROM dbo.Table2   
    INNER JOIN dbo.Table1   
    ON (dbo.Table2.ColA = dbo.Table1.ColA);

    UPDATE Production.Product  
SET Color = 'Metallic Red'  
WHERE StartDate IN ('20000404', '20000905') AND EndDate IS NOT NULL;

UPDATE Cities  
SET Location.SetXY(23.5, 23.5)  
WHERE Name = 'Anchorage'; 

UPDATE Production.BillOfMaterials  
SET PerAssemblyQty = c.PerAssemblyQty * 2  
FROM Production.BillOfMaterials AS c  
JOIN Parts AS d ON c.ProductAssemblyID = d.AssemblyID  
WHERE d.ComponentLevel = 0;  

UPDATE dbo.Table1   
SET c2 = c2 + d2   
FROM dbo.Table2   ;




UPDATE Cities  
SET Location.X = 23.5  
WHERE Name = 'Anchorage';  

UPDATE Sales.SalesPerson  
SET Bonus = 6000, CommissionPct = 2.10, SalesQuota = NULL;  

UPDATE TOP (10) HumanResources.Employee
SET VacationHours = VacationHours * 1.25 ;

UPDATE Production.Location  
SET CostRate = DEFAULT  
WHERE CostRate > 20.00;  

 



DROP DATABASE IF EXISTS holadios, ahahahaha, jajajaja, jejeje, 
jiji, jojo
, jeje ;


TRUNCATE TABLE adios                         ;

TRUNCATE HOLA.ME LLAMO ADIOS ;

TRUNCATE HOLA; TRUNCATE TABLE ADIOS;

DROP TABLE IF EXISTS hola..; DROP TABLE EXISTS HOLA; || ,;

DROP VIEW HOLAADIOS, AAAA.EEEE.IIII;

TRUNCATE TABLE ADIOS; DROP TABLE HOAL.AOIS.JAJA, HOLA, ADIOS.ADIOS; 

DROP DATABASE IF  ajkdflasjfdlska ,                      fdjkalfjdakslfjdfe,fdsfdsa,fdsafdsa,dfasfdsa;



DROP LOGIN estoesunid ; 

DROP INDEX jdsaj.fdsjkldsa, idsfd ON jdklsaf.jfdksa.jiji;

DELETE 

OPENQUERY ('AJA', 'ID');

DELETE 
FROM
HO.A.DIOS


WHERE
T2.EnglishProductSubcategoryName > 'Road Bikes';


ALTER DATABASE CURRENT COLLATE ID;

ALTER CURRENT COLLATE ID;

ALTER CURRENT ID GO

ALTER USER ID;
ALTER USER GO;

DELETE p.ProductID 
FROM Production.Product AS p   
JOIN Purchasing.ProductVendor AS v  
ON (p.ProductID = v.ProductID);  

DELETE Production.ProductCostHistory  
WHERE StandardCost BETWEEN 12.00 AND 14.00  
      AND EndDate IS NULL; 

      DELETE FROM Sales.SalesPersonQuotaHistory   
FROM Sales.SalesPersonQuotaHistory AS spqh  
INNER JOIN Sales.SalesPerson AS sp  
ON spqh.BusinessEntityID = sp.BusinessEntityID  
WHERE sp.SalesYTD > 2500000.00;  

DELETE spqh  
  FROM  
        Sales.SalesPersonQuotaHistory AS spqh  
    INNER JOIN Sales.SalesPerson AS sp  
        ON spqh.BusinessEntityID = sp.BusinessEntityID  
  WHERE  sp.SalesYTD > 2500000.00;  

  DELETE TOP (20)   
FROM Purchasing.PurchaseOrderDetail  
WHERE DueDate < '20020701';  


DELETE OPENQUERY (MyLinkServer, 'SELECT Name, GroupName FROM AdventureWorks2012.HumanResources.Department  WHERE DepartmentID = 18');  


DELETE Production.ProductProductPhoto  
OUTPUT DELETED.ProductID,  
       p.Name,  
       p.ProductModelID,  
       DELETED.ProductPhotoID  
    INTO @MyTableVar  
FROM Production.ProductProductPhoto AS ph  
JOIN Production.Product AS p   
    ON ph.ProductID = p.ProductID   
    WHERE p.ProductModelID BETWEEN 120 AND 130;  
  

ALTER INDEX ID ON HOLA.HOLA.A;

ALTER INDEX ALL ON HOLA. GO


ALTER VIEW JAJA.LALA     (ID,AD,OD,UD,ED)  ;







