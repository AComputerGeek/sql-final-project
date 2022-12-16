SELECT		o.OrderID,
			od.UnitPrice,
			od.Quantity
FROM			Orders o
JOIN			OrderDetails od ON o.OrderID = od.OrderID
WHERE		o.ShipCity = 'Vancouver'
ORDER BY		o.OrderID