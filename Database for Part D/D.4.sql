CREATE PROCEDURE		sp_unit_prices
(	@unit_price1_param		money,
	@unit_price2_param		money)
AS
	SELECT	ProductID,
			ProductName,
			EnglishName,
			UnitPrice
	FROM		Products
	WHERE	UnitPrice Between @unit_price1_param AND @unit_price2_param
GO