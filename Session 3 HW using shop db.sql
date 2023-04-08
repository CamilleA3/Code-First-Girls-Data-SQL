-- Find ALL sales records and all columns that took place in the London store, not in December, but sales concluded by Bill or Frank for the amount higher than $50 --
select * from sales1 where Store = 'London' and Month != 'Dec' and (SalesPerson = 'Bill' or SalesPerson = 'Frank') and SalesAmount > 50;
-- Return how many sales took place each week --
select count(SalesAmount), Week from sales1 group by Week;
-- Return how many sales took place each week AND present data by week in descending and then ascending order --
select count(Week) as Num_sales, Week from sales1 group by Week order by Week desc;
select count(Week), Week from sales1 group by Week order by Week asc;
-- Return how many sales were recorded each week on different days of the week --
select count(Week) as NUM_sales, Day from sales1 group by Week, Day order by Week, Day;
-- Alter the salesperson's name Inga to Annette --
update sales1 set SalesPerson = 'Annette' where SalesPerson = 'Inga';
select SalesPerson from sales1;
-- Return how many sales Annette did -- 
select count(SalesAmount) from sales1 where SalesPerson = 'Annette';
select * from sales1 where SalesPerson ='Annette';
-- Return the total sales amount by each person by day --
select sum(SalesAmount) as SalesAmount, SalesPerson, Day from sales1 group by SalesPerson, Day order by SalesPerson, Day;
-- Return the sum each person sold for the given period --
select round(sum(SalesAmount),2) as SalesAmount, SalesPerson from sales1 group by SalesPerson order by SalesAmount desc;
-- Return the sum each person sold for the given period, including the number of sales per person, their average, lowest, and highest sales amounts --
select SalesPerson, round(sum(SalesAmount),2) as SalesAmount, round(avg(SalesAmount),2) as AverageSales, min(SalesAmount) as LowestSales, max(SalesAmount) as HighestSales, count(SalesAmount) as NumberofSales from sales1 group by SalesPerson order by SalesAmount;
select distinct SalesPerson from sales1;
-- Return the total monetary sales amount achieved by each store -- 
select round(sum(SalesAmount),2) as TotalSales, Store from sales1 group by Store order by TotalSales desc;
-- Return the number of sales by each person if they did less than 3 sales for the past period --
select SalesPerson, count(SalesPerson) as 'Number of Sales pp' from sales1 group by SalesPerson having count(SalesPerson) < 3;
-- Return the total amount of sales by month where combined total is less than $100 --
select Month, round(sum(SalesAmount),2) as TotalSales from sales1 group by Month having sum(SalesAmount) order by TotalSales desc;