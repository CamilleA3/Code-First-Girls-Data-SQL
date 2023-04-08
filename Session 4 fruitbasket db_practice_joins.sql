create database fruitbasket;
create table Table1_fruitbasket (Id INT, Fruit varchar(50));
insert into Table1_fruitbasket (Id,Fruit) values (1,'pear'), (2,'apple'), (3,'kiwi'), (4,'orange'), (5,'banana');
create table Table2_fruitbasket (Id INT, Fruit varchar(50));
insert into table2_fruitbasket (Id,Fruit) values (1,'pear'), (2,'apple'),(3,'kiwi'),(6,'melon'),(7,'peach'),(8,'plum');
select * from Table1_fruitbasket;
select * from Table2_fruitbasket;
-- LEFT JOIN --
select t1.*, t2.* from Table1_fruitbasket t1 left join Table2_fruitbasket t2 on t1.Id = t2.Id;
-- INNER JOIN --
select t1.*, t2.* from table1_fruitbasket t1 inner join table2_fruitbasket t2 on t1.Id = t2.Id;
-- Delete then reinsert values into Table 2 --
select * from table2_fruitbasket;
delete from fruitbasket where Id =1;
alter table table2_fruitbasket drop column Id;
truncate table2_fruitbasket;
select * from table2_fruitbasket;
alter table table2_fruitbasket add Id INT;
select * from table2_fruitbasket;
insert into table2_fruitbasket (Id,Fruit) values (1,'pear'),(2,'apple'),(3,'kiwi'),(6,'melon'),(7,'peach'),(8,'plum');
select * from table2_fruitbasket;
-- Find the Null values
select t1.*,t2.* from table1_fruitbasket t1 left join table2_fruitbasket t2 on t1.Id = t2.Id where t2.Id is null;
-- Cross Joins --
select t1.Id,t2.Id from table1_fruitbasket t1 cross join table2_fruitbasket t2;
-- Union --
select t1.Id, t1.Fruit from table1_fruitbasket t1 union select t2.Id, t2.Fruit from table2_fruitbasket t2;
-- Union ALL --
select t1.Id, t1.Fruit from table1_fruitbasket t1 union all select t2.Id, t2.Fruit from table2_fruitbasket t2;