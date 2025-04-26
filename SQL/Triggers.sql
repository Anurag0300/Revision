use Anurag
go

select * from student

insert into Student values (11, 'Ritesh', 'pune', 2, 'enquiry', 20000)

create trigger TrStudentInsert1
on Student
for insert
as
begin
	print 'Student Table Insert Command Fired'
end
GO
insert into Student values (8, 'aniket', 'pune', 'dotnet')

select * from student

alter trigger TrStudentInsert
on Student
instead of insert
as
begin
	print 'Student Table Insert Command Fired'
end

insert into Student values (9, 'avinash', 'pune', 2, 'enquiry', 20000)

select * from student

-- trigger for Student update
create trigger TrStudentUpdate
on Student
for update
as
begin
	print ' Student Table Update Command Fired'
end

select * from Student

update Student set Name = 'aniket rathod' where RollNumber = 8

-- trigger for Student delete
create trigger TrStudentDelete
on Student
for delete
as
begin
	print ' Student Table Delete Command Fired'
end

select * from Student

delete from Student where RollNumber = 8

select * from inserted
select * from deleted

alter trigger TrStudentInsert
on Student
for insert
as
begin
	print 'Student Table Insert Command Fired'
	select * from inserted
	select * from deleted
end

select * from student

insert into Student values (8, 'avinash', 'pune', 2, 'enquiry', 20000)

alter trigger TrStudentDelete
on Student
for delete
as
begin
	print 'Student Table Delete Command Fired'
	select * from inserted
	select * from deleted
end

select * from Student

delete from Student where RollNumber = 8

alter trigger TrStudentUpdate
on Student
for update
as
begin
	print 'Student Table Update Command Fired'
	select * from inserted
	select * from deleted
end

