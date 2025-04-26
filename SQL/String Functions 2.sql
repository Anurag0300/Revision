
select min(Age) from Student

select max(Age) from Student

select sum(Age) from Student

select avg(Age) from Student



select 'Anurag' + 'Waghmare'
select 'vishal' + ' ' + 'rathod'
select 'vishal' + '     ' + 'rathod' 
select 'vishal' + space(50) + 'rathod'

declare @var6 varchar(50) = 'http://www.whatsapp.com'

select REPLACE(@var6, '.com', '.co.in') 


declare @var7 varchar(50) = 'anuragwaghmare@gmail.com.com'
select stuff(@var7, 7, 4, '*********') 

declare @var8 varchar(50) = 'Anurag'
select CHARINDEX('A', @var8) 
select CHARINDEX('g', @var8)  
select CHARINDEX('x', @var8)  
 

declare @var9 varchar(50) = 'anurag@'
if(CHARINDEX('@', @var9) > 0)
	print 'VALID EMAIL'
else
	print 'INVALID EMAIL'


-- substring() 
-- to retrieve part of string
declare @email varchar(50) = 'anurag@gmail.com'
 
select SUBSTRING(@email, 1, 6)  
select SUBSTRING(@email, 8, 9)  

 
create table #Student
(
Name varchar(50), Email varchar(100)
)
insert into #Student values ('anurag', 'anurag300@gmail.com'), 
('rushikesh', 'rushi4447@gmail.com'), 
('aditya', 'adiiii@gmail.com'),
('sidhesh', 'sidhesh0909@gmail.com')

select Name, Email from #Student

select Name, Email, SUBSTRING(Email, CHARINDEX('@', Email) + 1, len(Email) - CHARINDEX('@', Email))
as Domain from #Student

select top 1 SUBSTRING(Email, CHARINDEX('@', Email) + 1, len(Email) - CHARINDEX('@', Email)) as Domain, 
count(Name) as Total from #Student
group by SUBSTRING(Email, CHARINDEX('@', Email) + 1, len(Email) - CHARINDEX('@', Email))