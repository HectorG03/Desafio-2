USE AdventureWorksDW;
SELECT 
    PC.EnglishProductCategoryName AS Categoria,
    SUM(FIS.SalesAmount) AS TotalVentas,
    SUM(FIS.TotalProductCost) AS CostoTotal,
    SUM(FIS.SalesAmount - FIS.TotalProductCost) AS UtilidadTotal,
    AVG(FIS.SalesAmount) AS VentaPromedio
FROM dbo.FactInternetSales FIS
INNER JOIN dbo.DimProduct P ON FIS.ProductKey = P.ProductKey
INNER JOIN dbo.DimProductSubcategory PSC ON P.ProductSubcategoryKey = PSC.ProductSubcategoryKey
INNER JOIN dbo.DimProductCategory PC ON PSC.ProductCategoryKey = PC.ProductCategoryKey
GROUP BY PC.EnglishProductCategoryName
ORDER BY TotalVentas DESC;