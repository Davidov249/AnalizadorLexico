CREATE DATABASE prueba01 GO

CREATE USER javier GO

CREATE TABLE empleado
(
id INT IDENTITY,
nombre NVARCHAR(50) NOT NULL
CHECK (nombre != ''),
apellido NVARCHAR(50) NOT NULL
CHECK (nombre != ''),
pais VARCHAR(5) NULL,
jefe INT REFERENCES empleado,
UNIQUE (nombre,apellido ASC),
INDEX ind1 (id, nombre DESC, apellido DESC, pais),
PRIMARY KEY NONCLUSTERED (nombre,apellido)
);

CREATE INDEX ind2 ON empleado
( id, nombre, apellido)
INCLUDE (id, nombre, apellido)
WHERE pais IS NULL GO

CREATE VIEW v_empleados AS
SELECT
e.nombre nombre_empleado,
e.apellido [apellido_empleado],
j.nombre AS 'Nombre Jefe',
j.apellido AS Apellido
FROM
empleado e
LEFT JOIN empleado AS j ON e.jefe = j.id;

ALTER TABLE  id--.id.id
ALTER COLUMN col1 INT COLLATE colID NOT NULL GO

ALTER TABLE  id--.id.id
ALTER COLUMN col2 ADD ROWGUIDCOL;
ALTER TABLE  id--.id.id
ALTER COLUMN col3 DROP NOT FOR REPLICATION;

ALTER TABLE id
ADD
col1 FLOAT NULL,
col2 BIGINT NOT NULL,
col3 VARCHAR CHECK(col3 NOT LIKE ''),
CONSTRAINT fk FOREIGN KEY (col2) REFERENCES id.id(id) NOT FOR REPLICATION;

ALTER TABLE id
DROP
IF EXISTS
uno,dos,
COLUMN IF EXISTS tres,
CONSTRAINT cuatro GO

ALTER USER javier;
ALTER DATABASE CURRENT SET ROLLBACK IMMEDIATE GO

ALTER VIEW vista.vista (col1,col2)
AS
SELECT*FROM tabla GO

ALTER VIEW vista.vista
AS
SELECT id, SUM(0)
FROM tabla
WHERE id + 1 < 10
GROUP BY id
GO

DROP USER IF EXISTS [id];
DROP DATABASE base1, base2 GO
DROP DATABASE IF EXISTS base3 ;
DROP VIEW vista.vista, vista GO
DROP VIEW IF EXISTS vista.vista, vista, vista;

DROP INDEX indexA ON tabla1, indexB ON tabla2;
DROP INDEX IF EXISTS iA ON T1, i2 ON T2 GO

