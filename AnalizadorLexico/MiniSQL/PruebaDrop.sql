DROP DATABASE [LineaDiamante]
GO

DROP TABLE AdventureWorks2012.dbo.SalesPerson2 ;

DROP INDEX IX_ProductVendor_BusinessEntityID   
    ON Purchasing.ProductVendor;  
GO  

DROP INDEX  
    IX_PurchaseOrderHeader_EmployeeID ON Purchasing.PurchaseOrderHeader,  
    IX_Address_StateProvinceID ON Person.Address;  
GO  

DROP VIEW IF EXISTS dbo.Reorder ;  
GO  