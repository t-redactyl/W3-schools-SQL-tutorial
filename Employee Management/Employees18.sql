/* Reassign all employees from the Research department (code 77) to the IT department (code 14). */

UPDATE Employees
	SET Department = 14
	WHERE Department = 77