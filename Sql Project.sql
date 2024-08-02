Create Database Libary;
show databases;
use libary;
create table Student_info(
Student_id varchar(30),
Student_Name varchar(20),
College varchar(20),
Branch varchar(20),
Year varchar(10));
show tables;
select * from student_info;
create table Book_info(
Student_id varchar(30),
Student_Name varchar(20),
Book_Name varchar(20),
Book_Number varchar(30),
Issue_Date varchar(20),
return_Date varchar(20),
Book_author varchar(20));
select * from Book_info;
INSERT INTO Student_info (Student_id, Student_Name, College, Branch, Year) VALUES
('S001', 'Rahul Patel', 'Oriental', 'CSE', '3rd'),
('S002', 'Ankit Sharma', 'Oriental', 'ME', '2nd'),
('S003', 'Priya Singh', 'Oriental', 'ECE', '1st'),
('S004', 'Neha Verma', 'Oriental', 'CSE', '4th'),
('S005', 'Amit Gupta', 'Oriental', 'CE', '3rd'),
('S006', 'Kavita Jain', 'Oriental', 'EEE', '2nd'),
('S007', 'Rohit Kumar', 'Oriental', 'CSE', '1st'),
('S008', 'Sonal Mehta', 'Oriental', 'ME', '4th'),
('S009', 'Vikas Rai', 'Oriental', 'CE', '2nd'),
('S010', 'Nisha Yadav', 'Oriental', 'ECE', '3rd');
select * from student_info;
ALTER TABLE Book_info MODIFY Book_Name VARCHAR(50);
INSERT INTO Book_info (Student_id, Student_Name, Book_Name, Book_Number, Issue_Date, Return_Date, Book_Author) VALUES
('S001', 'Rahul Patel', 'Data Science 101', 'B001', '2024-01-15', '2024-02-15', 'John Doe'),
('S002', 'Ankit Sharma', 'Mechanical Engineering', 'B002', '2024-02-01', '2024-03-01', 'Jane Smith'),
('S003', 'Priya Singh', 'Digital Electronics', 'B003', '2024-03-10', '2024-04-10', 'Albert Einstein'),
('S004', 'Neha Verma', 'Advanced Computing', 'B004', '2024-01-20', '2024-02-20', 'Alan Turing'),
('S005', 'Amit Gupta', 'Civil Engineering Basics', 'B005', '2024-04-01', '2024-05-01', 'Isaac Newton'),
('S006', 'Kavita Jain', 'Electrical Circuits', 'B006', '2024-02-05', '2024-03-05', 'Nikola Tesla'),
('S007', 'Rohit Kumar', 'Programming in C', 'B007', '2024-03-15', '2024-04-15', 'Dennis Ritchie'),
('S008', 'Sonal Mehta', 'Thermodynamics', 'B008', '2024-01-25', '2024-02-25', 'James Watt'),
('S009', 'Vikas Rai', 'Structural Analysis', 'B009', '2024-02-10', '2024-03-10', 'Gustave Eiffel'),
('S010', 'Nisha Yadav', 'Electronic Devices', 'B010', '2024-03-05', '2024-04-05', 'William Shockley');
select * from Book_info;
select student_info.student_id
from Student_info
inner join Book_info
on Student_info.Student_id=Book_info.student_id;
SELECT * 
FROM Student_info
LEFT JOIN Book_info 
ON Student_info.Student_id = Book_info.Student_id;

SELECT Branch, COUNT(*) AS NumberOfStudents
FROM Student_info
GROUP BY Branch;

SELECT Student_info.Student_id, Student_info.Student_Name, COUNT(Book_info.Book_Number) AS NumberOfBooksIssued
FROM Student_info
LEFT JOIN Book_info ON Student_info.Student_id = Book_info.Student_id
GROUP BY Student_info.Student_id, Student_info.Student_Name;

SELECT Student_info.Student_id, Student_info.Student_Name, AVG(DATEDIFF(Book_info.Return_Date, Book_info.Issue_Date)) AS AvgIssueDuration
FROM Student_info
LEFT JOIN Book_info ON Student_info.Student_id = Book_info.Student_id
GROUP BY Student_info.Student_id, Student_info.Student_Name;

