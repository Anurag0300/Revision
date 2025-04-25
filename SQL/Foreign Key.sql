 
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
City varchar(50),
TrainerId int foreign key references Trainer(Id)
)

insert into Trainer values (1, 'vikul', 'male', 14), (2, 'usha', 'female', 3)

insert into Student values (1, 'Anurag', 'male', 'pune', 1), (2, 'Rushikesh', 'male', 'mumbai', 1)
insert into Student values (3, 'Anjali', 'female', 'pune', 1), 
(4, 'Aditya', 'male', 'pune', 2)

select * from Trainer
select * from Student






 

