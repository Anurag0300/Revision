

declare @Name varchar(50) = '        Anurag      '
select @Name 

select LTRIM(@Name) 

select RTRIM(@Name) 

select TRIM(@Name) 

declare @var2 varchar(50) = 'Anurag Waghmare'
select @var2

select UPPER(@var2) 

select LOWER(@var2)



declare @var3 varchar(50) = 'Anurag'
select @var3

select reverse(@var3)

select LEN(@var3)



declare @var4 varchar(50) = 'Anurag'
select @var4

select LEFT(@var4, 2)

select LEFT(@var4, 4)

select right(@var4, 2)

select right(@var4, 3) 


select Name from Student where LEFT(Name, 1) = 'a'

select Name from Student where RIGHT(Name, 1) = 'i'


select replicate('A#', 5) 


