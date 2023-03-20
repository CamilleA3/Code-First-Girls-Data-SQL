CREATE database bakery;
create table savory (id int not null, item_name varchar(50), price float(2), main_ingredient varchar(50));
create table sweet (id int not null, item_name varchar(50), price float(2));
insert into savory (id, item_name, price, main_ingredient) values (1, 'meat pie', 1.25, 'pork'), (2, 'sausage roll', 1, 'null'), (3, 'pasty', 2.45, 'beef');
insert into sweet (id, item_name, price) values (1, 'doughnut', 0.5), (2,'croissant', 0.75), (3, 'pain au chocolat', 0.55), (4, 'cinnamon twirl', 0.45), (5, 'cannoli', 0.88), (6, 'apple tart', 1.12);
