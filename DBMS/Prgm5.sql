-- CREATE DATABASE MATRIMONIAL_DB; 

-- USE MATRIMONIAL_DB; 

-- CREATE TABLE ENROLL( 
-- E_Name VARCHAR(30), 
-- E_Gender VARCHAR(10), 
-- E_Age INT, 
-- E_Qualification VARCHAR(30), 
-- E_Salary INT, 
-- E_Address VARCHAR(50), 
-- E_City VARCHAR(30) 
-- );
-- DESC ENROLL; 

-- CREATE TABLE WORKS( 
-- E_Name VARCHAR(30), 
-- E_Salary INT, 
-- E_City VARCHAR(30) 
-- );
-- DESC WORKS; 

-- CREATE TABLE MIRRAGE_BUREAU( 
-- MB_name VARCHAR(30), 
-- MB_city VARCHAR(30), 
-- MB_charge INT 
-- ); 
-- DESC MIRRAGE_BUREAU; 

-- INSERT INTO ENROLL VALUES 
-- ('Rahul','Male',28,'B.Tech',65000,'MG Road','Mysore'), 
-- ('Anita','Female',25,'B.Sc',40000,'MG Road','Mysore'), 
-- ('Ravi','Male',30,'MBA',70000,'VV Road','Mandya'), 
-- ('Pooja','Female',27,'MBA',50000,'VV Road','Mandya'), 
-- ('Arjun','Male',26,'B.Tech',55000,'BTM Layout','Bangalore');
-- SELECT * FROM ENROLL; 

-- INSERT INTO WORKS VALUES 
-- ('Rahul',65000,'MIT-Mysore'), 
-- ('Anita',40000,'Infosys'), 
-- ('Ravi',70000,'Wipro'), 
-- ('Pooja',50000,'TCS'), 
-- ('Arjun',55000,'IBM');
-- SELECT * FROM WORKS; 

-- INSERT INTO MIRRAGE_BUREAU VALUES 
-- ('Happy Marriage','Mysore',5000), 
-- ('Perfect Match','Bangalore',4500), 
-- ('Royal Matrimony','Mandya',6000), 
-- ('Life Partner','Mangalore',4000), 
-- ('Elite Marriage','Hassan',5500); 
-- SELECT * FROM MIRRAGE_BUREAU; 

-- SELECT E.E_Name, W.E_City 
-- FROM ENROLL E 
-- JOIN WORKS W ON E.E_Name = W.E_Name 
-- WHERE E.E_Gender = 'Male' 
-- AND W.E_City = 'MIT-Mysore' 
-- AND W.E_Salary > 60000; 

-- SELECT MB_name 
-- FROM MIRRAGE_BUREAU 
-- WHERE MB_charge = 
-- ( 
-- SELECT MIN(MB_charge) 
-- FROM MIRRAGE_BUREAU 
-- );

-- SELECT B.E_Name 
-- FROM ENROLL B, ENROLL G 
-- WHERE B.E_Gender='Female' 
-- AND G.E_Gender='Male' 
-- AND B.E_City = G.E_City 
-- AND B.E_Address = G.E_Address;

-- SELECT G.E_Name 
-- FROM ENROLL G, ENROLL B 
-- WHERE G.E_Gender='Male' 
-- AND B.E_Gender='Female' 
-- AND G.E_Age = B.E_Age 
-- AND G.E_Qualification = B.E_Qualification; 

-- SELECT E_Name 
-- FROM ENROLL 
-- WHERE E_Gender='Male' 
-- AND E_Salary > 
-- ALL 
-- ( 
-- SELECT E_Salary 
-- FROM ENROLL 
-- WHERE E_Gender='Female' 
-- AND E_City='Mandya' 
-- ); 