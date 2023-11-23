
select firstname,lastname from orders inner join customers on customers.id=orders.customer_id where total_amount in (select max(total_amount) from orders) order by total_amount desc;

select firstname,lastname, order_id, total_amount from customers inner join orders on customers.id=orders.customer_id where customers.id in (select orders.customer_id where total_amount in (select max (total_amount) from orders)) order by total_amount desc;

select firstname,lastname from customers inner join orders on customers.id=orders.customer_id where total_amount > (select avg(total_amount) from orders) order by total_amount desc;



