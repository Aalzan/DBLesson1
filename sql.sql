CREATE TABLE Products (
	product_id SERIAL PRIMARY KEY,
	name VARCHAR, 
	price NUMERIC
);

CREATE TABLE Orders (
	order_id SERIAL PRIMARY KEY,
	customer_id INT, 
	product_id INT, 
	count_or INT
);

CREATE TABLE Customers (
	customer_id SERIAL PRIMARY KEY,
	name VARCHAR
);

insert into Products (product_id, name, price) values (1, 'Alphonse', 10);
insert into Products (product_id, name, price) values (2, 'Colin', 11);
insert into Products (product_id, name, price) values (3, 'Quinn', 99);
insert into Products (product_id, name, price) values (4, 'Marjory', 79);
insert into Products (product_id, name, price) values (5, 'Natale', 15);

insert into Orders (order_id, customer_id, product_id, count_or) values (1, 1, 1, 1);
insert into Orders (order_id, customer_id, product_id, count_or) values (2, 2, 2, 2);
insert into Orders (order_id, customer_id, product_id, count_or) values (3, 3, 3, 3);
insert into Orders (order_id, customer_id, product_id, count_or) values (4, 4, 4, 4);
insert into Orders (order_id, customer_id, product_id, count_or) values (5, 5, 5, 5);

insert into Customers (customer_id, name) values (1, 'Eléa');
insert into Customers (customer_id, name) values (2, 'Åslög');
insert into Customers (customer_id, name) values (3, 'Sélène');
insert into Customers (customer_id, name) values (4, 'Mahélie');
insert into Customers (customer_id, name) values (5, 'Irène');
