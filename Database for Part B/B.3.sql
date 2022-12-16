SELECT		CustomerID,
			CompanyName,
			Country,
			Phone
FROM			Customers
WHERE		Country IN ('Canada','USA')
ORDER BY		CustomerID