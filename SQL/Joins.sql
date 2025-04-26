
create table Trainer 
(
Id int primary key,
Name varchar(50),
Experience int
)
drop table Trainer
insert into Trainer values (1, 'vikul', 14), (2, 'usha', 3), (3, 'atul', 3)

create table Student 
(
RollNumber int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id)
)

insert into Student values (1, 'Anurag', 'pune', 1), (2, 'Aditya', 'pune', 1), 
(3, 'Rushikesh', 'pune', 2), (4, 'Abhishek', 'pune', null), (5, 'Ritika', 'pune', null)

go

select * from Trainer
select * from Student

-- inner join
select Student.Name as [Student Name], Trainer.Name as [Trainer Name]
from Student inner join Trainer 
on Student.TrainerId = Trainer.Id

select *
from Student inner join Trainer 
on Student.TrainerId = Trainer.Id


select Trainer.*
from Student inner join Trainer 
on Student.TrainerId = Trainer.Id

-- left outer join

select s.Name as StudentName, t.Name as TrainerName
from Student s left outer join Trainer t 
on s.TrainerId = t.Id

select s.Name as StudentName, t.Name as TrainerName
from Student s left join Trainer t 
on s.TrainerId = t.Id

-- right outer join

select * from Trainer

select s.Name as StudentName, t.Name as TrainerName
from Student s right outer join Trainer t
on s.TrainerId = t.Id

select s.Name as StudentName, t.Name as TrainerName
from Student s right join Trainer t
on s.TrainerId = t.Id

-- full outer join

select s.Name as StudentName, t.Name as TrainerName
from Student s full join Trainer t
on s.TrainerId = t.Id

-- cross join

select s.Name as StudentName, t.Name as TrainerName
from Student s cross join Trainer t
