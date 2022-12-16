CREATE VIEW		vw_order_cost
AS
SELECT			o.OrderID,
				o.OrderDate,
				p.ProductID,
				c.CompanyName,
				(od.Quantity * od.UnitPrice)			AS	OrderCost
FROM				Orders o
JOIN				OrderDetails od		ON	o.OrderID	 = od.OrderID
JOIN				Products p			ON	od.ProductID = p.ProductID
JOIN				Customers c			ON	o.CustomerID = c.CustomerID
