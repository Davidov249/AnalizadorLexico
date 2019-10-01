ALTER VIEW HumanResources.EmployeeHireDate  
AS  
SELECT p.FirstName, p.LastName, e.HireDate  
FROM HumanResources.Employee AS e JOIN Person.Person AS p  
ON e.BusinessEntityID = p.BusinessEntityID  
WHERE HireDate < 2
GO 

ALTER VIEW 
vista_usuarios AS 
SELECT * FROM usuarios WHERE edad < 30;

ALTER VIEW MyView AS SELECT TableCol1 AS ViewCol1,
     TableCol2 AS ViewCol2,
     TableCol3 AS ViewCol3
     FROM MyTable;


ALTER DATABASE testDB
COLLATE French_CI_AI
GO

ALTER USER Mary51;  