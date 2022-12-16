SELECT		SUBSTRING(ProductName,1,1)	AS ProductName,
			COUNT(ProductName)			AS Title
FROM			Products
WHERE		ProductName LIKE '[A-Z]%'
GROUP BY    SUBSTRING(ProductName,1,1)
HAVING		COUNT(ProductName) >= 3

