SELECT		o.OrderID,
			o.Quantity,
			p.ProductID,
			p.ReorderLevel,
			s.SupplierID
FROM			OrderDetails o
JOIN			Products p  ON o.ProductID  = p.ProductID
JOIN			Suppliers s ON p.SupplierID = s.SupplierID
WHERE		o.Quantity BETWEEN 65 AND 70
ORDER BY		o.orderID