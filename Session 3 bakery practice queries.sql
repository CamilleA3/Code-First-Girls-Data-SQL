-- return all savory items with either pork/beef filling --
select * from bakery.savory where main_ingredient = 'pork' or main_ingredient = 'beef';
-- return all sweet items that is 50 cents or less --
select * from bakery.sweet where price <= 0.5;
-- return all sweet items and the price, except for the cannoli --
select item_name, price from bakery.sweet where item_name != 'cannoli'; 
-- return all sweet items that start with the letter 'c' --
select * from bakery.sweet where item_name like 'c%';
-- return all savory items that cost more than $1, but is less than $3 --
select * from bakery.savory where price between 1 and 3;