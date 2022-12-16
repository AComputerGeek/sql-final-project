CREATE TRIGGER	tr_check_qty
ON	OrderDetails
FOR	UPDATE
AS
IF	(SELECT		Quantity		
	 FROM		inserted) >
							(SELECT		p.UnitsInStock		
							 FROM		Products p 
							 JOIN		inserted i	ON	p.ProductID = i.ProductID)
	BEGIN
		PRINT 'UIS is less than Qty'
		ROLLBACK TRANSACTION
	END