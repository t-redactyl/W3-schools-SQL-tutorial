/* Select the name and last name of employees working for departments with second lowest budget. */

SELECT Employees.Name,  Employees.LastName
	FROM Employees
	WHERE Employees.Department = (
		SELECT sub.Code
		FROM (SELECT * FROM Departments ORDER BY Departments.Budget LIMIT 2) sub
		ORDER BY Budget DESC LIMIT 1);