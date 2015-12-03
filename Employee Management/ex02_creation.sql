DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments (
   Code INTEGER PRIMARY KEY NOT NULL,
   Name TEXT NOT NULL ,
   Budget REAL NOT NULL 
 );
 
 DROP TABLE IF EXISTS Employees;
 CREATE TABLE Employees (
   SSN INTEGER PRIMARY KEY NOT NULL,
   Name TEXT NOT NULL ,
   LastName TEXT NOT NULL ,
   Department INTEGER NOT NULL , 
   CONSTRAINT fk_Departments_Code FOREIGN KEY(Department) 
   REFERENCES Departments(Code)
 );