CREATE PROCEDURE sp_del_inactive_cust
AS
	DELETE FROM	Customers
	WHERE	CustomerID NOT IN
			(SELECT	CustomerID
			FROM		Orders)
GO

