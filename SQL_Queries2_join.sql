use classicmodels;

select * from customers;
select * from employees;
select * from offices;
select * from orderdetails;
select * from orders;
select * from payments;
select * from productlines;
select * from products;

-- Inner Join 
select customers.customerName,orders.orderDate from orders
inner join customers on orders.customerNumber = customers.customerNumber;

select customers.customerNumber from payments
inner join customers on payments.customerNumber = customers.customerNumber;

select employees.firstName,employees.lastName,offices.officeCode from offices
inner join employees on offices.officeCode = employees.officeCode;

-- JOIN or INNER JOIN
-- JOIN and INNER JOIN will return the same result.
-- INNER is the default join type for JOIN, so when you write JOIN the parser actually writes INNER JOIN.
select employees.firstName,employees.lastName,offices.officeCode from offices
join employees on offices.officeCode = employees.officeCode;

-- JOIN Three Tables
select customers.customerName,customers.city,orders.customerNumber from ((orders
inner join customers on orders.customerNumber = customers.customerNumber)
inner join payments on orders.customerNumber = payments.customerNumber);

-- left join
select employees.employeeNumber, employees.firstName,employees.lastName,offices.officeCode,offices.city from offices
left join employees on offices.officeCode = employees.officeCode
order by employees.employeeNumber;

-- right join
select products.productName,products.productVendor,orderdetails.productCode from orderdetails
right join products on orderdetails.productCode = products.productCode
order by products.productName;

-- full outer join
select customers.customerName, customers.customerNumber,orders.customerNumber from orders
full join customers on customers.customerNumber = orders.customerNumber
order by customers.customerName;

