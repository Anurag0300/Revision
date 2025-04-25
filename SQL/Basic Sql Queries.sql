 

use Anurag
go
 
create table Student
(
RollNumber int, 
Name varchar(20), 
City varchar(50), 
Gender varchar(6) 
)


select RollNumber, Name, City, Gender from Student 

--single value inserting
insert into Student (RollNumber, Name, City, Gender) 
values (1, 'Anurag','pune','Male')


--multiple values inserting
insert into Student values (2, 'Rushikesh', 'Pune', 'Male'),
(3, 'Aditya', 'Satara', 'Male'),
(4, 'Amruta','Pune', 'Female'),
(5, 'Ritika','Mumbai', 'Female')

 

-- editing records
update Student set City = 'mumbai' where RollNumber = 3

update Student set City = 'pune', Name = 'Anjali' where ROllNumber = 5

-- Deleting records
delete from Student where RollNumber = 4

delete from Student  where RollNumber = 1

select RollNumber, name from Student

-- add a new column to Student table
alter table Student 
add Email varchar(100)



-- table rename
execute sp_rename 'Student','Friends'




