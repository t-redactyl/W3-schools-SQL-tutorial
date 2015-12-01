/* Select the name and last name of each employee, along with the name and budget of the employee's department. */

SELECT Employees.Name AS [First Name], Employees.LastName AS [Last Name],
	Departments.Name AS [Department], Departments.Budget AS [Department Budget]
	FROM Employees
	INNER JOIN Departments
	ON Employees.Department = Departments.Code