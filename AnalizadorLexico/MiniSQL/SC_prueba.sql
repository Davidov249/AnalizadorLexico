UPDATE Sales.SalesPerson  
SET Bonus = 6, CommissionPct = 0.10
WHERE SalesQuota = NULL;


UPDATE Sales.SalesPerson  
SET Bonus = , CommissionPct = 0.10 --ERROR NO TIENE VALOR BONUS
WHERE SalesQuota = NULL; 

DROP DATABASE [LineaDiamante]
GO

ALTER  TABLE [dbo].[InformeViajes] DROP CONSTRAINT [CK__InformeVi__Pasaj__6D0D32F4]
GO

DELETE TOP (1) FROM AdventureWorks2017.HumanResources.Employee FROM AdventureWorks2017.HumanResources.Employee, Production.Product 
WHERE Employee.BusinessEntityID LIKE 'S%'
GO

DROP DATABASE --ERROR FALTA NOMBRE DE LA BASE
GO

DROP USER IF EXISTS user_name 
GO

ALTER TABLE HumanResources.Employee DROP CONSTRAINT  EXISTS GOLA; --SE ESPERA INDENTIFICADOR O IF
GO

ALTER DATABASE testDB
COLLATE French_CI_AI;

DELETE TOP (1) FROM AdventureWorks2017.HumanResources.Employee FROM AdventureWorks2017.HumanResources.Employee, Production.Product 
WHERE Employee.BusinessEntityID IN (1, 5, 8, 0);

ALTER  TABLE  DROP CONSTRAINT [CK__InformeVi__Pasaj__6D0D32F4] --ERROR FALTA IDENTIFICADOR DE TABLA //
GO


INSERT INTO UBICACION (ciudad, zona, descripcion) VALUES ('Guatemala', 4, 'El trebol'), ('Guatemala', 3, 'El Basurero'), ('Guatemala', 8, 'Atlntico')
														,('Guatemala', 1, 'Palacio'), ('Guatemala', 11, 'Peri'), ('Guatemala', 11, 'MiraFlowers')
														,('Guatemala', 5, 'La Asuncion'), ('Guatemala', 7, 'El Naranjal'), ('Guatemala', 6, 'El Mercadito'),
														('Guatemala', 17, 'km 10');

CREATE INDEX IX_FF ON dbo.FactFinance ( FinanceKey, DateKey, OrganizationKey DESC);


CREATE NONCLUSTERED INDEX IX_TransactionHistory_ReferenceOrderID
ON Production.TransactionHistory (ReferenceOrderID)
ON TransactionsPS1 (TransactionDate); 

CREATE UNIQUE INDEX AK_UnitMeasure_Name
  ON Production.UnitMeasure(Name);


CREATE NONCLUSTERED INDEX IX_Address_PostalCode
Person.Address (PostalCode) --FALTA ON
INCLUDE (AddressLine1, AddressLine2, City, StateProvinceID); 


