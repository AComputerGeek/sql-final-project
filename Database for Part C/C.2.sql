CREATE VIEW		vw_employee_info
AS
SELECT			EmployeeID,
				(FirstName +' ' + LastName)		AS Name,
				BirthDate
FROM				Employees