create table Student
(
RollNumber int,
Name varchar(50),
Gender varchar(10),
City varchar(50),
Age int
)

insert into Student values 
(1, 'Anurag', 'male', 'pune', 22),
(11, 'Anjali', 'female', 'pune', 20),
(7, 'Swati', 'female', 'mumbai', 25),
(2, 'Rushikesh', 'male', 'mumbai', 20),
(3, 'Aditya', 'male', 'pune', 25),
(4, 'Pradip', 'male', 'satara', 21),
(50, 'Abhishek', 'male', 'pune', 23),
(17, 'Prajakta', 'female', 'pune', 20),
(13, 'Siddhia', 'female', 'mumbai', 28),
(9, 'Suraj', 'male', 'satara', 32)


select RollNumber, Name, Gender, City, Age from Student

select RollNumber, Name, Gender, City, Age from Student order by RollNumber

select RollNumber, Name, Gender, City, Age from Student order by RollNumber desc

select RollNumber, Name, Gender, City, Age from Student order by Gender

select RollNumber, Name, Gender, City, Age from Student order by Gender, Age

select RollNumber, Name, Gender, City, Age from Student order by Gender, Age desc

select RollNumber, Name, Gender, City, Age from Student order by RollNumber, Name, Gender


