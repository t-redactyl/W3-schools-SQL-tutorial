/* Select all the data of employees whose last name is "Smith" or "Doe". */

SELECT * FROM Employees
	WHERE LastName IN ('Smith', 'Doe')