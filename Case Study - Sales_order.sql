SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM sales_order;

-- 1) Identify the total no of products sold

SELECT sum(quantity) as total_sold FROM sales_order;

-- 2) Other than Completed, display the available delivery status's

select --mention all the columns
from --the table which has the data
where --filter condition

select status
from sales_order
where status <> 'Completed';

-- OR

select status
from sales_order
where status not in ('Completed','completed')

-- // Remove Duplicate - 
select distinct status
from sales_order
where status in ('Completed','completed')


select status
from sales_order
where lower(status) <> 'completed';

select status
from sales_order
where upper(status) <> 'COMPLETED';

-- 3) Display the order id, order_date and product_name for all the completed orders.

select order_id,order_date,name
from sales_order as so
inner join products as p on p.id = so.prod_id
where lower(so.status) = 'completed'

-- 4) Sort the above query to show the earliest orders at the top. Also display the 
-- customer who purchased these orders.

select order_id,order_date,p.name as product_name,c.name as customer_name
from sales_order as so
inner join products as p on p.id = so.prod_id
inner join customers c on so.customer_id = c.id
where lower(so.status) = 'completed' 
order by order_date asc;

-- 5) Display the total no of orders corresponding to each delivery status

select status,count(*) as Total_Orders
from sales_order
group by status;

-- Aggregate functions : count,sum.avg,min,max

-- 6) For orders purchasing more than 1 item, how many are still not completed?

select count(*) not_completed_count
from sales_order so
where quantity > 1
and lower(status) <> 'completed'

-- 7)Find the total no of orders corresponding to each delivery status by ignoring 
-- the case in delivery status. Status with highest no of orders should be at the 
-- top.

select status,count(*) as Total_Orders
from sales_order
group by status;


select status, 
	case when status = 'completed'
	then 'Completed'
	else status
	end as updated_status
from sales_order;

-- // Final Ans -1 
select updated_status,count(*) as Total_Orders
from (select status, 
	case when status = 'completed'
	then 'Completed'
	else status
	end as updated_status
from sales_order) as sq
group by updated_status
order by Total_Orders desc;

-- // Final Ans - 2
select lower(status) as status,count(*) as Total_Orders
from sales_order
group by lower(status)
order by Total_Orders desc;

-- 8) Write a query to identify the total products purchased by each customer

select * from customers;
select * from sales_order;

select  c.name as customer_name, sum(so.quantity) as total_purchased_products
from sales_order as so
inner join customers as c on c.id = so.customer_id
group by c.name

-- 9)Display the total sales and average sales done for each day.

select * from sales_order;
select * from products;

select order_date,sum(price * quantity) as total_sales,avg(price) as avh_sales
from sales_order so
join products p on p.id = so.prod_id
group by order_date
order by order_date

-- 10) Display the customer name, employee name and total sale amount of all 
-- orders which are either on hold or pending.

select c.name as customer,e.name as employee,sum(so.quantity * p.price) as total_sale
from sales_order so
join employees e on so.emp_id = e.id
join products p on so.prod_id = p.id
join customers c on so.customer_id = c.id
where so.status in ('On Hold','Pending')
group by c.name,e.name

-- 11) Fetch all the orders which were neither completed/pending or were handled by
--  the employee Abrar. Display employee name and all details of order.

select e.name as employee,so.*
from sales_order so
join employees e on e.id = so.emp_id
where lower(status) not in('completed','pending') 
or lower(e.name) like '%abrar%'

select * from sales_order where emp_id = 2

-- 12) Fetch the orders which cost more than 2000 but did not include the macbook 
-- pro. Print the total sale amount as well.

select p.name,order_id,quantity, price, (quantity * price) as total_cost
from sales_order so
join products p on p.id = so.prod_id
where (quantity * price) > 2000 
and lower(p.name) not like '%macbook%';

-- 13) Identify the customers who have not purchased any product yet.

select * from customers;
select * from sales_order;

select distinct customer_id
from sales_order

select * 
from customers
where id not in (select distinct customer_id
					from sales_order);

-- or
select  c.*
from customers c
left join sales_order so on so.customer_id = c.id
where so.order_id is null;

-- or
select  c.*
from sales_order so
right join customers c on so.customer_id = c.id
where so.order_id is null;

-- 14) Write a query to identify the total products purchased by each customer. 
-- Return all customers irrespective of wether they have made a purchase or not. 
-- Sort the result with highest no of orders at the top.


select c.name, coalesce(sum(quantity),0) as total_prod_purchased
from sales_order so
right join customers c on c.id = so.customer_id
group by c.name
order by total_prod_purchased desc;


-- 15) Corresponding to each employee, display the total sales they made of all the 
-- completed orders. Display total sales as 0 if an employee made no sales yet.

select e.name as employee,
coalesce(sum(quantity * price),0) as total_sale
from sales_order so
join products p on p.id = so.prod_id
right join employees e on e.id = so.emp_id
and lower(status) = 'completed'
group by e.name

-- 16) Re-write the above query so as to display the total sales made by each 
-- employee corresponding to each customer. If an employee has not served a 
-- customer yet then display "-" under the customer.

select e.name as employee,coalesce(c.name,'-') as customer,
coalesce(sum(quantity * price),0) as total_sale
from sales_order so
join products p on p.id = so.prod_id
join customers c on c.id = so.customer_id
right join employees e on e.id = so.emp_id
and lower(status) = 'completed'
and lower(status) = 'completed'
group by e.name,c.name
order by 1,2;

-- 17) Re-write above query so as to display only those records where the total sales 
-- is above 1000

select e.name as employee,coalesce(c.name,'-') as customer,
coalesce(sum(quantity * price),0) as total_sale
from sales_order so
join products p on p.id = so.prod_id
join customers c on c.id = so.customer_id
right join employees e on e.id = so.emp_id
and lower(status) = 'completed'
group by e.name,c.name
having coalesce(sum(quantity * price),0) > 1000
order by 1,2;

-- 18) Identify employees who have served more than 2 customer

select * from employees;
select * from customers;

select e.name as employee, count(distinct c.name) as customer
from sales_order so
join employees e on e.id = so.emp_id
join employees c on c.id = so.customer_id
group by e.name
having count(distinct c.name) > 2
order by 1;

-- 19)  Identify the customers who have purchased more than 5 products

select c.name as customer,sum(so.quantity) as total_products
from sales_order so
join customers c on c.id = so.customer_id
group by c.name
having sum(so.quantity) > 5;

-- 20) Identify customers whose average purchase cost exceeds the average sale of 
-- all the orders.

select c.name as customer, avg(quantity * p.price)
from sales_order so
join customers c on c.id = so.customer_id
join products p on p.id = so.prod_id
group by c.name
having avg(quantity * p.price) > (select avg(quantity * p.price)
from sales_order so
join products p on p.id = so.prod_id);

