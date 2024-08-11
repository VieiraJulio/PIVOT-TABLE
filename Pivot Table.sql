-- PIVOT TABLE 

USE ContosoRetailDW

SELECT
	BrandName,
	COUNT(ProductKey) AS 'Total Produtos'
FROM
	DimProduct
GROUP BY BrandName


SELECT 
	*
FROM
	(
	SELECT
		ProductKey,
		BrandName
	
	FROM
		DimProduct
	) AS Dados 
PIVOT(
	COUNT(ProductKey)
	FOR BrandName
-- TESTANDO DE MODO MANUAL A PRIMEIRO MODO : SELECT DISTINCT ',[' + TRIM(BrandName) + ']' FROM DimProduct
		IN ( 
	[Northwind Traders]
	,[Contoso]
	,[Tailspin Toys]
	,[Adventure Works]
	,[Southridge Video]
	,[Wide World Importers]
	,[The Phone Company]
	,[Fabrikam]
	,[Litware]
	,[A. Datum]
	,[Proseware]
	)

) AS PivotTable


