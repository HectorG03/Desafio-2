SELECT @@VERSION AS VersionSQLServer;

SELECT name, create_date
FROM sys.databases
WHERE name LIKE 'AdventureWorksDW%';

USE AdventureWorksDW;  

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

SELECT COUNT(*) AS FilasFactInternetSales
FROM dbo.FactInternetSales;
