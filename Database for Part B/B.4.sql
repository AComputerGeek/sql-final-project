SELECT		s.SupplierID,
			s.Name,
			p.ProductName,
			p.ReorderLevel,
			p.UnitsInStock
FROM			Suppliers s
JOIN			Products p ON s.supplierID = p.supplierID
WHERE		p.ReorderLevel = p.UnitsInStock
ORDER BY		s.supplierID
			