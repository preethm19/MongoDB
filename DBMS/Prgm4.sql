-- CREATE DATABASE EMPLOYEE_DB; 

-- USE EMPLOYEE_DB; 

-- CREATE TABLE EMPLOYEE(
-- SSN INT PRIMARY KEY, 
-- Name VARCHAR(30), 
-- Address VARCHAR(50), 
-- Sex CHAR(1), 
-- Salary INT, 
-- SuperSSN INT, 
-- DNo INT 
-- );
-- Desc EMPLOYEE;

-- CREATE TABLE DEPARTMENT( 
-- DNo INT PRIMARY KEY, 
-- DName VARCHAR(30), 
-- MgrSSN INT, 
-- MgrStartDate DATE
-- ); 
-- DESC DEPARTMENT; 

-- CREATE TABLE DLOCATION( 
-- DNo INT, 
-- DLoc VARCHAR(30) 
-- );
-- DESC DLOCATION; 

-- CREATE TABLE PROJECT( 
-- PNo INT PRIMARY KEY, 
-- PName VARCHAR(30), 
-- PLocation VARCHAR(30), 
-- DNo INT 
-- );
-- DESC PROJECT; 

-- CREATE TABLE WORKS_ON( 
-- SSN INT, 
-- PNo INT, 
-- Hours INT 
-- );
-- DESC WORKS_ON; 

-- INSERT INTO EMPLOYEE VALUES 
-- (101,'Rahul','Bangalore','M',55000,201,5), 
-- (102,'Anita','Mysore','F',60000,201,5), 
-- (103,'Ravi','Hassan','M',45000,202,10), 
-- (104,'Pooja','Mangalore','F',70000,202,10), 
-- (105,'Arjun','Tumkur','M',52000,201,5);
-- SELECT * FROM EMPLOYEE; 

-- INSERT INTO DEPARTMENT VALUES 
-- (5,'HR',201,'2020-01-10'), 
-- (6,'Finance',202,'2019-03-15'), 
-- (7,'Sales',203,'2021-07-12'), 
-- (8,'IT',204,'2022-02-20'), 
-- (10,'Marketing',205,'2018-05-18');
-- SELECT * FROM DEPARTMENT; 

-- INSERT INTO DLOCATION VALUES 
-- (5,'Mysore'), 
-- (6,'Hassan'), 
-- (7,'Mangalore'), 
-- (8,'Bangalore'), 
-- (10,'Tumkur'); 
-- SELECT * FROM DLOCATION; 

-- INSERT INTO PROJECT VALUES 
-- (1,'ProjectA','Mysore',5), 
-- (2,'ProjectB','Hassan',6), 
-- (3,'ProjectC','Mangalore',7), 
-- (4,'ProjectD','Bangalore',8), 
-- (5,'ProjectE','Tumkur',10);
-- SELECT * FROM PROJECT; 

-- INSERT INTO WORKS_ON VALUES 
-- (101,1,10), 
-- (102,2,15), 
-- (103,3,20), 
-- (104,4,12), 
-- (105,5,18);
-- SELECT * FROM WORKS_ON; 

-- SELECT DISTINCT W.SSN 
-- FROM WORKS_ON W 
-- JOIN PROJECT P ON W.PNo = P.PNo 
-- WHERE P.PLocation IN ('Mysore','Hassan','Mangalore');

-- SELECT * 
-- FROM EMPLOYEE 
-- WHERE DNo = 5 
-- AND Salary BETWEEN 50000 AND 60000;

-- SELECT  
-- SUM(Salary) AS Total_Salary, 
-- MAX(Salary) AS Maximum_Salary, 
-- MIN(Salary) AS Minimum_Salary, 
-- AVG(Salary) AS Average_Salary 
-- FROM EMPLOYEE;

-- SELECT Name 
-- FROM EMPLOYEE 
-- WHERE Salary > 
-- ( 
-- SELECT AVG(Salary) 
-- FROM EMPLOYEE 
-- WHERE DNo = 10 
-- );

-- SELECT DNo, COUNT(*) AS Employees_Above_40000 
-- FROM EMPLOYEE 
-- WHERE Salary > 40000 
-- GROUP BY DNo
-- HAVING COUNT(*) >= 2;