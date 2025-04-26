
select * from student
select distinct * from student


-- syntax stored procedure
create procedure spStudent
as
begin
	select * from student
end

exec spStudent


alter procedure spStudent
as
begin
	select * from student where RollNumber = 1
end

exec spStudent

-- deleting stored procedure
drop proc spStudent

-- stored procedure with parameter
create procedure spGetStudentByRollNumber
@RollNumber int
as
begin
	select * from student where RollNumber = @RollNumber
end


execute spGetStudentByRollNumber 1

execute spGetStudentByRollNumber 4



create proc spgetFilteredStudent
@City varchar(50), @CourseName varchar(50)
as
begin
	select * from Student where City = @City or CourseName = @CourseName
end

execute spgetFilteredStudent 'pune', 'java'

execute spgetFilteredStudent 'java', 'pune'

execute spgetFilteredStudent @CourseName = 'dot net', @City = 'pune'

-- stored procedure which returns rollnumber by name
create proc spgetStudentRollNumberByName
@Name varchar(50)
as
begin
	select RollNumber from Student where Name = @Name
end


exec spgetStudentRollNumberByName 'Anurag'
exec spgetStudentRollNumberByName 'Rushikesh'

 
  
-- sp to return name by rollnumber
create proc uspgetRollNumberByName
@RollNumber int
as
begin
	declare @Name varchar(50)
	select @Name = Name from Student where RollNumber = @RollNumber
	return @Name
end


declare @Name varchar(50)
execute @Name = uspgetRollNumberByName 1
print @Name




create table FlipkartProduct
(
Id int primary key identity,
Name varchar(50),
Brand varchar(50),
Color varchar(50),
Size char(3),
Price int
)


insert into FlipkartProduct values 
('shoe 1', 'local', 'black', 'L', 500),
('shoe 2', 'puma', 'black', 'S', 1500),
('shoe 3', 'adidas', 'black', 'L', 5000),
('shoe 4', 'puma', 'red', 'L', 250),
('shoe 5', 'puma', 'green', 'L', 1700),
('shoe 6', 'adidas', 'red', 'L', 2000),
('shoe 7', 'adidas', 'red', 'XL', 4500),
('shoe 8', 'local', 'red', 'L', 199),
('shoe 9', 'local', 'black', 'A', 299)

select * from FlipkartProduct

create proc uspGetProducts
@Brand varchar(50), @Color varchar(50), @Size char(30), @Price int
as
begin
	select * from FlipkartProduct where 
	Brand = @Brand or
	Color = @Color or
	Size = @Size or
	Price between 0 and @Price
end

alter proc uspGetProducts
@Brand varchar(50) = null, @Color varchar(50) = null, @Size char(30) = null, @Price int = null
as
begin
	select * from FlipkartProduct where 
	(Brand = @Brand or @Brand is null) and 
	(Color = @Color or @Color is null) and 
	( Size = @Size or @Size is null) and
	(Price between 0 and @Price or @Price is null)
end

exec uspGetProducts 

exec uspGetProducts @Brand = 'puma'

exec uspGetProducts @Brand = 'local' 

exec uspGetProducts @Brand = 'local', @Price = 300

exec uspGetProducts @Brand = 'puma' , @Size ='L'



