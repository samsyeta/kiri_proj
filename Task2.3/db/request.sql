
select cus.firstname, cus.lastname, coalesce(sum(ord.total_amount)) as order_sum from customers cus left join orders ord on cus.id=ord.customer_id group by cus.firstname, cus.lastname order by order_sum desc;

select cus.firstname, cus.lastname, ord.id, ord.total_amount from customers cus right join orders ord on cus.id=ord.customer_id order by ord.total_amount desc;

with fo as (select customer_id,sum(total_amount) as sum_total_amount from orders group by customer_id) select customer_id,sum_total_amount from fo where sum_total_amount > (select avg(sum_total_amount) from fo);




