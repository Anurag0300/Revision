

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

-- to select all columns and all rows we use *
select * from student


select RollNumber, name, Gender, City, Age from Student

select RollNumber, name, Gender from Student

select top 3 RollNumber, name, Gender from student

select top 7 RollNumber, name, Gender from student

select top 30 RollNumber, name, Gender from student

select RollNumber, name, Gender, City, Age from Student

select distinct RollNumber, name, Gender, City, Age from Student

select RollNumber, Name, Gender, City, Age from Student where RollNumber = 9

select RollNumber, Name, Gender, City, Age from Student where RollNumber != 9

select RollNumber, Name, Gender, City, Age from Student where RollNumber <> 9

select RollNumber, Name, Gender, City, Age from Student where City <> 'pune'

select RollNumber, Name, Gender, City, Age from Student
where City = 'pune'

select RollNumber, Name, Gender, City, Age from Student
where City = 'pune' and Age = 22

select RollNumber, Name, Gender, City, Age from Student
where City = 'pune' or Age = 22

select RollNumber, Name, Gender, City, Age from Student
where Age >= 20 and Age <= 22

select RollNumber, Name, Gender, City, Age from Student
where Age between 20 and 22

select RollNumber, Name, Gender, City, Age from Student
where Age not between 20 and 22

select RollNumber, Name, Gender, City, Age from Student
where RollNumber = 13 and Rollnumber = 1 and ROllNumber = 2

select RollNumber, Name, Gender, City, Age from Student
where RollNumber = 13 or Rollnumber = 1 or ROllNumber = 2 or RollNumber = 7 or RollNumber = 17

select RollNumber, Name, Gender, City, Age from Student
where RollNumber in (13, 1, 2, 7, 17)

select RollNumber, Name, Gender, City, Age from Student
where RollNumber not in (13, 1, 2, 7, 17)


select RollNumber, Name, Gender, City, Age from Student
where Name = 'Anurag'

 
select RollNumber, Name, Gender, City, Age from Student
where Name like 'p%'

select RollNumber, Name, Gender, City, Age from Student
where Name like '%i'


select RollNumber, Name, Gender, City, Age from Student
where Name like '__i%'


select RollNumber, Name, Gender, City, Age from Student

