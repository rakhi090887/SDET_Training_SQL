-- Create a table named orders
create table orders(
    order_no int primary key, purchase_amount float, order_date date,
    customer_id int, salesman_id int);

-- Add values to the table
insert into orders values
(70001, 150.5, '2012-10-05', 3005, 5002), (70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001), (70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002), (70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-08-15', 3002, 5001), (70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003), (70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007), (70013, 3045.6, '2012-04-25', 3002, 5001);


select distinct salesman_id from orders;
Select order_no from orders order by order_date asc;
Select * from orders where purchase_amount < 500;
Select * from orders where purchase_amount between 1000 and 2000;

############Activity7##############
Select sum(purchase_amount) from orders;
Select avg(purchase_amount) from orders;
Select max(purchase_amount) from orders;
Select min(purchase_amount) from orders;
Select count(salesman_id) from orders;

#############Activity8############
select customer_id,max(purchase_amount) from orders group by customer_id;
select salesman_id,max(purchase_amount) from orders where order_date='2012-08-17' group by salesman_id,order_date;
select max(purchase_amount) from orders group by customer_id,order_date having max(purchase_amount) in (2030,3450, 5760, 6000);