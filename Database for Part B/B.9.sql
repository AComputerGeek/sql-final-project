SELECT	ProductID,
		ProductName,
		QuantityPerUnit,
		UnitPrice
FROM		Products
WHERE	(ProductName LIKE '%choc%' OR ProductName LIKE '%tofu%')
ORDER BY ProductID