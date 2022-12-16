CREATE TRIGGER	tr_insert_shippers
ON Shippers
INSTEAD OF INSERT
AS
IF ((SELECT		CompanyName
	 FROM		inserted)	 =	(SELECT		s.CompanyName
								 FROM		Shippers s
							     JOIN		inserted i	ON  s.CompanyName = i.CompanyName
							     WHERE	    s.CompanyName = i.CompanyName))
		BEGIN
				PRINT 'This company is repetetive!'
		END
	ELSE
		BEGIN
			INSERT INTO Shippers
			SELECT ShipperID, CompanyName
			FROM inserted
		END
