/* Select the name and last name of employees working for departments with a budget greater than $60,000. */

SELECT Employees.Name AS [First Name], Employees.LastName AS [Last Name]
	FROM Employees
	INNER JOIN Departments
	ON Employees.Department = Departments.Code
	WHERE Departments.Budget > 60000