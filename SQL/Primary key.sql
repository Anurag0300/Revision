
create table Student
(
RollNumber int primary key,
Name varchar(50),
Gender varchar(10),
City varchar(50), 
TrainerName varchar(50),
TrainerGender varchar(10),
TrainerExperience int 
)

insert into Student values 
(1, 'Anurag','male','pune', 'vikul', 'male', 14),
(2, 'Rushikesh','male','pune', 'Usha', 'female', 3),
(3, 'Amruta','female','pune', 'usha', 'female', 3),
(4, 'Siddhi','female','pune', 'vikul', 'male', 14)

select * from Student

drop table Student 

create table Trainer
(
Id int primary key,
Name varchar(50),
Gender varchar(10),
Experience int
)

create table Student
(
RollNumber int primary key,
Name varchar(50),
Gender varchar(10),
City varchar(50)
)



select * from Trainer
select * from Student

insert into Trainer values (1, 'vikul', 'male', 14), (2, 'usha', 'female', 3)

insert into Student values (1, 'Anurag', 'male', 'pune'), (2, 'Rushikesh', 'male', 'mumbai')


select * from Trainer
select * from Student

 
alter table Student
add TrainerId int

go

select * from Trainer
select * from Student

insert into Student values 
(3, 'Aditya', 'male', 'pune', 1), 
(4, 'prathmesh', 'male', 'pune', 2)

select * from Trainer
select * from Student

 

drop table Student 
drop table Trainer
