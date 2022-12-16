CREATE VIEW		vw_orders
AS
SELECT			o.OrderID,
				o.CustomerID,
				c.CompanyName,
				c.City,
				c.Country,
				o.ShippedDate
FROM				Customers c
JOIN				Orders	 o	ON c.CustomerID = o.CustomerID
