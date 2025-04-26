use Anurag
go

select * from Student

select Gender, count(Gender) as Total from Student
group by Gender

select City, count(City) as Total from Student
group by City

select City, Gender, count(RollNumber) as Total from Student
group by City, Gender

select Gender, min(Age) from Student 
group by Gender


select City, count(RollNumber) as Total from Student 
group by City
having count(RollNumber) >= 2

select City, count(RollNumber) as Total from Student 
where City = 'pune'
group by City


