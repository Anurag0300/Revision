use Anurag
go

select getdate() 

select datename(day, getdate()) + datename(day, getdate()) 
select DATEPART(day, getdate()) + DATEPART(day, getdate()) 


select datefromparts(2024, 7, 11)
select TIMEFROMPARTS(10, 35, 54, 4567, 4) 
select TIMEFROMPARTS(10, 35, 54, 4567, 7) 
select smalldatetimefromparts(2024,7,11,10,35) 
select datetimefromparts(2024,7,11,10,35,12, 466) 
select DATETIME2FROMPARTS(2024,7,11,10,35,12,784, 5)
select DATETIMEOFFSETFROMPARTS(2024,7,11,10,35,12, 784, 5, 30, 3)


declare @dob date = '08/12/2002'
declare @today date = getdate()
declare @tempDate date = @dob
declare @years int, @months int, @days int
select @years = DATEDIFF(year, @dob, @today) - (case when month(@today) < month(@dob) then 1 else 0 end)

set @tempDate = DATEADD(year, @years, @tempDate)
select @months = DATEDIFF(MONTH, @tempDate, @today) - (case when day(@today) < day(@tempDate) then 1 else 0 end)

set @tempDate = DATEADD(month, @months, @tempDate)
select @days = DATEDIFF(day, @tempDate, @today)

print cast(@years as varchar) + ' years ' + cast(@months as varchar) + ' months ' 
+ cast(@days as varchar) + ' days'


select getdate() -- 2024-07-16 11:17:10.810
select cast(getdate() as varchar) -- Jul 16 2024 11:17AM
select convert(varchar, getdate()) -- Jul 16 2024 11:17AM
select convert(varchar, getdate(), 100) -- Jul 16 2024 11:18AM
select convert(varchar, getdate(), 101) -- 07/16/2024
select convert(varchar, getdate(), 102) -- 2024.07.16
select convert(varchar, getdate(), 104) -- 16.07.2024
select convert(varchar, getdate(), 105) -- 16-07-2024




