SELECT		o.OrderID,
			c.CompanyName,
			c.ContactName,
			CONVERT(CHAR(12), o.ShippedDate, 109)			AS ShippedDate,
			DATEDIFF(YEAR, o.ShippedDate, 'Jan 1 2009')		AS ElapsedYears
FROM			Orders o
JOIN			Customers c ON o.CustomerID = c.CustomerID
WHERE		o.ShippedDate >= 'Jan 1 1994'	
ORDER BY		o.OrderID,
			DATEDIFF(YEAR, o.ShippedDate, 'Jan 1 2009')


			
