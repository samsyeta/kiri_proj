create table customers(
id serial primary key,
firstname varchar(255),
lastname varchar(255),
email varchar(255)
);

insert into customers(firstname, lastname, email)
values
('Joan','Lopez','pretium@yahoo.com'),
('Garth','Bird','ac.mi.eleifend@aol.net'),
('Wylie','Fields','et.rutrum.eu@aol.ca'),
('Hakeem','Crosby','eu@hotmail.couk'),
('Thaddeus','Sanford','luctus.ipsum@google.org');

create table orders(
order_id serial primary key,
customer_id integer references customers(id),
order_date date default current_date,
total_amount decimal(10,3));

insert into orders (customer_id,order_date,total_amount) 
values
('1','Jul 18, 2023','176.04'),
('2','Aug 12, 2024','154.45'),
('3','Oct 31, 2023','89.96'),
('4','Oct 10, 2024','110.22'),
('5','Sep 16, 2023','56.36');

create table order_details(
id serial primary key,
order_id integer references orders(order_id),
productid varchar(255),
quantity text,
UnitPrice decimal(10,3));

insert into order_details (order_id,productid,quantity,unitprice)
values
('1','1','15','1.36'),
('2','2','18','1.56'),
('3','3','25','0.56'),
('4','4','16','0.66'),
('5','5','27','0.36');


