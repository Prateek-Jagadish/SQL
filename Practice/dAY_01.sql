USE MyDatabase
GO

select * from customers

select * from orders

select c.id, c.score,c.first_name from customers c

select * from customers c where c.score !=  0

select * from customers c where c.country = 'Germany'

select c.id, c.first_name, c.score from customers c where c.country = 'Germany'

select * from customers c Order By c.score ASC -- Default

select * from customers c Order By c.score DESC

select * from customers c Order By c.country, c.score DESC

select * from customers c Order By c.score DESC ,c.country -- here the ASC is by default

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- Group By -> Combines rows with the same values
-- IMP: All columns in tge SELECT statement must be either aggregated or included in the GROUP BY.

-- Query: Find the total scores for each country
select c.country, sum(c.score) As total_score
from customers c
Group By c.country

-- Query: Find the total scores for each country and Order them by their scores
select c.country, sum(c.score) As total_score
from customers c
Group By c.country
Order By total_score

-- Query: Find the total scores and totla number of employees for each country.
select c.country, sum(c.score) As total_score, count(c.id) As Emp_count
from customers c
Group By c.country

---------------------------------------------------------------------------------------------------------------------------------------------------------


-- HAVING -> filter your data after aggregation, -Used with Group By
-- WHERE is executed before aggregation and HAVING is executed after aggregation

-- Query: Find the total scores and total number of employees for each country having total score greater than 800
select c.country, sum(c.score) As total_score, count(c.id) As Emp_count
from customers c
Group By c.country Having sum(c.score) > 800
Order By c.country

-- Query: Find the average score for each country considering only customers with a score not equal to 0 
--        and return only those countries with an average score greater than 430.
select c.country, AVG(c.score) as Average_score
from customers c
Where c.score != 0
Group by c.country Having  AVG(c.score) > 430
-- Order by c.country

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- DISTINCT - Removes the duplicates (Repeated values)
	-- Don't use DISTINCT unless it's necessary; it can slowdown the query
-- Syntax : SELECT Distinct col_name From Table

-- Query: Select unique values for the country
Select Distinct c.country
from customers c

---------------------------------------------------------------------------------------------------------------------------------------------------------

-- TOP - to Limit your data
	-- restrict the number of rows returned
	-- Syntax: Select Top3
	--			* From Table

-- Query: Retrive Only three Customers
Select Top 3 *
from customers

-- Query: Retrive the  top three customers with the highest scores
Select Top 3 *
from customers c
order by c.score Desc