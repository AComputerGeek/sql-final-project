SELECT		*
FROM			vw_orders
WHERE		ShippedDate BETWEEN '1993-01-01' AND '1993-01-31'
ORDER BY		CompanyName, 
			Country