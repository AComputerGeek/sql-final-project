SELECT		c.CustomerID,
			c.CompanyName,
			c.Fax,
			o.OrderID,
			o.OrderDate
FROM			Customers c
JOIN			Orders o ON c.CustomerID = o.CustomerID
WHERE		o.ShippedDate is NULL
ORDER BY		c.CustomerID,
			o.OrderDate
