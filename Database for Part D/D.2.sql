CREATE PROCEDURE		sp_orders_dates
(	@start_date_param		smalldatetime,
	@end_date_param		smalldatetime	)
AS
	SELECT	o.OrderID,
			o.CustomerID,
			c.CompanyName,
			s.CompanyName	AS	ShipperName,
			o.ShippedDate
	FROM		Orders	o
	JOIN		Customers	c ON	o.CustomerID	=	c.CustomerID
	JOIN		Shippers	s ON	o.ShipperID		=	s.ShipperID
	WHERE		o.ShippedDate BETWEEN @start_date_param AND @end_date_param
GO


					