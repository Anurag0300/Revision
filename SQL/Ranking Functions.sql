
select Name, City, Salary from Employee

select Name, City, Salary,
row_number() over(order by Salary desc) as SrNo
from Employee

select Name, City, Salary,
row_number() over(partition by Salary order by Salary desc) as SrNo
from Employee

-- rank() function
select Name, City, Salary,
rank() over(order by Salary desc) as RankN
from Employee

;with cte
as
(
select Name, City, Salary,
rank() over(order by Salary desc) as RankN
from Employee
)
select * from cte where RankN = 4

select Name, City, Salary, 
dense_rank() over(order by Salary desc) as RankN
from Employee

;with cte
as
(
select Name, City, Salary, 
dense_rank() over(order by Salary desc) as RankN
from Employee
)
select * from cte where RankN = 5

-- row_number(), rank(), dense_rank()

select Name, City, Salary,
row_number() over(order by Salary desc) as RowNumberN,
rank() over(order by Salary desc) as RankN,
dense_rank() over(order by Salary desc) as DenseRankN
from Employee

-- ntile(num)

select Name, City, Salary from Employee

select Name, City, Salary,
ntile(7) over(order by salary) as NTileN
from Employee

select Name, City, Salary,
ntile(2) over(order by salary) as NTileN
from Employee

select Name, City, Salary,
ntile(3) over(order by salary) as NTileN
from Employee

select Name, City, Salary,
ntile(70) over(order by salary) as NTileN
from Employee