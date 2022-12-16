CREATE PROCEDURE		sp_emp_info
(@emp_id_param		int)
AS
	SELECT			EmployeeID,
					LastName,
					FirstName,
					Phone
	FROM				Employees
	WHERE			EmployeeID = @emp_id_param
GO