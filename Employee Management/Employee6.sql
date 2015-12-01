/* Select all the data of employees that work in department 37 or department 77. */

SELECT * FROM Employees 
	WHERE Department IN (37, 77)