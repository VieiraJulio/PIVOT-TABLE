-- PIVOT TABLE 
/*
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


*/

-- GRUPOS DE LINHA 

USE ContosoRetailDW

SELECT 
	DepartmentName,
	COUNT(*) AS 'Total de funcionários'
FROM
	DimEmployee
GROUP BY DepartmentName



SELECT 
	*
FROM
	
	(SELECT 
		EmployeeKey,
		DepartmentName,
		YEAR(HireDate) AS 'Ano'
	FROM
		DimEmployee) AS Dados
PIVOT(
	COUNT(EmployeeKey)
	FOR DepartmentName
-- SELECT DISTINCT ',[' + TRIM(DepartmentName) + ']' FROM DimEmployee
	IN(
		[Document Control]
		,[Engineering]
		,[Executive]
		,[Facilities and Maintenance]
		,[Finance]
		,['Human Resources Contral]
		,[Human Resources]
		,[Information Services]
		,[Marketing]
		,[Production Control]
		,[Production]
		,[Purchasing]
		,[Quality Assurance]
		,[Research and Development]
		,[Sales]
		,[Shipping and Receiving]
		,[Tool Design]
		)
) AS PivotTable


