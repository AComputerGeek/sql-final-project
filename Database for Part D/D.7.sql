CREATE PROCEDURE	 sp_shipping_date
(	@ship_date_param		smalldatetime	)
AS
	SELECT		o.OrderID,
				c.CompanyName		AS	CustomerName,
				s.CompanyName		AS	ShipperName,
				o.OrderDate,
				o.ShippedDate
	FROM			Orders	  o
	JOIN			Customers c	ON	o.CustomerID = c.CustomerID
	JOIN			Shippers  s	ON	o.ShipperID	 = s.ShipperID
	WHERE		DATEADD(DAY,10,o.OrderDate) = @ship_date_param
GO
