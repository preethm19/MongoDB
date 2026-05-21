-- CREATE DATABASE BusReservation;

-- USE BusReservation;

-- CREATE TABLE PASSENGER( 
-- P_id INT PRIMARY KEY, 
-- P_Name VARCHAR(30), 
-- P_Gender VARCHAR(10), 
-- P_city VARCHAR(30) 
-- );
-- DESC PASSANGER;

-- CREATE TABLE AGENCY(
-- A_id INT PRIMARY KEY,
-- A_Name VARCHAR(40),
-- A_city VARCHAR(30)
-- );
-- DESC AGENCY;

-- CREATE TABLE BUS(
-- B_id INT PRIMARY KEY,
-- B_date DATE,
-- B_time TIME,
-- B_scr VARCHAR(30),
-- B_dest VARCHAR(30)
-- );
-- DESC BUS;

-- CREATE TABLE BOOKING(
-- P_id INT,
-- A_id INT,
-- B_id INT,
-- B_date DATE,
-- B_time TIME,
-- PRIMARY KEY(P_id, B_id),
-- FOREIGN KEY(P_id) REFERENCES PASSENGER(P_id),
-- FOREIGN KEY(A_id) REFERENCES AGENCY(A_id),
-- FOREIGN KEY(B_id) REFERENCES BUS(B_id)
-- );
-- DESC BOOKING;

-- INSERT INTO PASSENGER VALUES
-- (123,'Rahul','Male','Bangalore'),
-- (124,'Anita','Female','Mysore'),
-- (125,'Ravi','Male','Mandya'),
-- (126,'Pooja','Female','Bangalore'),
-- (127,'Arjun','Male','Tumkur');
-- SELECT * FROM PASSENGER;

-- INSERT INTO AGENCY VALUES
-- (1,'Happy Smiling','Bangalore'),
-- (2,'Fast Travels','Mysore'),
-- (3,'Green Line','Mandya');
-- SELECT * FROM AGENCY;

-- INSERT INTO BUS VALUES 
-- (10,'2024-02-01','16:00:00','Bangalore','MIT-Mysore'), 
-- (11,'2024-02-02','16:00:00','Bangalore','MIT-Mysore'), 
-- (12,'2024-05-04','10:00:00','Bangalore','Mandya'), 
-- (13,'2024-05-06','12:00:00','Mysore','Mandya'), 
-- (14,'2024-02-01','16:00:00','Tumkur','MIT-Mysore'); 
-- SELECT * FROM BUS; 

-- INSERT INTO BOOKING VALUES 
-- (123,1,12,'2024-05-04','10:00:00'), 
-- (124,2,10,'2024-02-01','16:00:00'), 
-- (125,1,11,'2024-02-02','16:00:00'), 
-- (126,1,10,'2024-02-01','16:00:00'); 
-- SELECT * FROM BOOKING; 

-- SELECT * 
-- FROM BUS 
-- WHERE B_dest = 'MIT-Mysore'; 

-- SELECT B.B_id 
-- FROM BUS B 
-- JOIN BOOKING BK ON B.B_id=BK.B_id 
-- WHERE BK.P_id=123 
-- AND B.B_dest='Mandya' 
-- AND B.B_date<'2024-05-05'; 

-- SELECT P_Name 
-- FROM PASSENGER 
-- WHERE P_id NOT IN 
-- ( 
-- SELECT P_id FROM BOOKING 
-- ); 

-- SELECT * 
-- FROM BUS 
-- WHERE B_time='16:00:00' 
-- AND B_date IN ('2024-02-01','2024-02-02'); 

-- SELECT P.* 
-- FROM PASSENGER P 
-- JOIN BOOKING B ON P.P_id=B.P_id 
-- JOIN AGENCY A ON B.A_id=A.A_id 
-- WHERE P.P_Gender='Male' 
-- AND A.A_Name='Happy Smiling';  