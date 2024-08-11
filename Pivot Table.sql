-- PIVOT TABLE 

USE ContosoRetailDW

SELECT
	BrandName,
	COUNT(ProductKey) AS 'Total Produtos'
FROM
	DimProduct
GROUP BY BrandName