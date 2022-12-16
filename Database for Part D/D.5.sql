CREATE PROCEDURE		sp_customers_city
(	@city_param		nvarchar(15)		)
AS
	SELECT	CustomerID,
			CompanyName,
			Address,
			City,
			Phone
	FROM		Customers
	WHERE	City =	@city_param
GO