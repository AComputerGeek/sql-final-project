CREATE PROCEDURE		sp_products
(	@product_name_param		nvarchar(40),
	@month_param				varchar(12),
	@year_param				int	)
AS
	SELECT	p.ProductName,
			p.UnitPrice,
			p.UnitsInStock,
			s.Name
	FROM		Products			p
	JOIN		Suppliers		s	ON	p.SupplierID		=	s.SupplierID
	JOIN		OrderDetails		od	ON	p.ProductID		=	od.ProductID
	JOIN		Orders			o	ON	od.OrderID		=	o.OrderID
	WHERE p.ProductName LIKE @product_name_param
	AND
	DATENAME(MONTH,o.OrderDate) = @month_param
	AND
	DATEPART(YEAR, o.OrderDate) = @year_param
GO