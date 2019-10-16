/****** prueba, por favor funciona ******/
CREATE DATABASE prueba ON  PRIMARY 
( NAMES = 'prueba', FILE = 'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\prueba.mdf' , SIZE = 60608),
( NAMES = 'prueba2', FILE = 'H:\Data\prueba2.ndf' , SIZE = 1048576);

ALTER DATABASE prueba COLLATE SQL_Latin1_General_CP1_CI_AS
GO

CREATE TABLE test.cqf.DEXTask(
	TaskId INT IDENTITY(1,1) NOT NULL,
	StartDate VARCHAR(10) NOT NULL,
	EndDate VARCHAR(10) NOT NULL,
	IsProcessed BIT NOT NULL,
	ProcessedDate VARCHAR(10) NULL,
	IsHorizontal BIT NOT NULL,
 CONSTRAINT PK_DEXTask PRIMARY KEY CLUSTERED 
(
	TaskId ASC
)
) ON PRIMARY
GO

ALTER VIEW prueba.dbo.jr_JOURRSPPAG AS
   SELECT TaskId AS C1, COUNT(1) AS BeforeTruncateCount   
	FROM test.cqf.DEXTask  
	WHERE TaskId > 3240823408
	GROUP BY TaskId
	ORDER BY TaskId ASC;
GO

TRUNCATE TABLE test.cqf.DEXTask;  
GO  

INSERT INTO test.cqf.DEXTask(TaskId,StartDate,EndDate,IsProcessed,ProcessedDate,IsHorizontal)
VALUES(12345,'2019-10-01','2019-10-03',1,'2019-10-02',1)
;
 
--END


