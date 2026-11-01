USE AdventureWorksDW;
SELECT TOP 10
    C.FirstName + ' ' + C.LastName AS NombreCliente,
    C.EmailAddress AS Correo,
    COUNT(FIS.SalesOrderNumber) AS TotalPedidos,
    SUM(FIS.SalesAmount) AS VentasTotales
FROM dbo.FactInternetSales FIS
INNER JOIN dbo.DimCustomer C ON FIS.CustomerKey = C.CustomerKey
GROUP BY C.FirstName, C.LastName, C.EmailAddress
ORDER BY VentasTotales DESC;