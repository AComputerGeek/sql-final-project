CREATE PROCEDURE sp_reorder_qty
(	@unit_value_param		smallint)
AS
	SELECT		p.ProductID,
				p.ProductName,
				s.Name,
				p.UnitsInStock,
				p.ReorderLevel
	FROM			Products  p
	JOIN			Suppliers s	ON	p.SupplierID = s.SupplierID
	WHERE		(p.UnitsInStock - p.ReorderLevel) < @unit_value_param
GO