SELECT		o.OrderID,
			p.ProductName,
			c.CompanyName,
			CONVERT(CHAR(12), o.OrderDate, 109)							AS	OrderDate,
			CONVERT(CHAR(12), DATEADD(DAY, 10, o.ShippedDate), 109)		AS	NewShippedDate,
			(od.Quantity * p.UnitPrice)									AS	OrderCost
FROM			Orders o
JOIN			Customers c		ON o.CustomerID = c.CustomerID
JOIN			OrderDetails od ON o.OrderID		= od.OrderID
JOIN			Products p		ON od.ProductID = p.ProductID
WHERE		(o.OrderDate BETWEEN 'Jan 1 1992' AND '30 Mar 1992')
AND			(od.Quantity * p.UnitPrice)	>= 1500.00
ORDER BY		o.OrderID