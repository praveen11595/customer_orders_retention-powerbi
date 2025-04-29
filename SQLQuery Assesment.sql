use practice

select * from customer_orders
select * from payments

--Tasks:
--1.Order and Sales Analysis:
--total orders placed
select COUNT(distinct order_id) as total_orders
from customer_orders

--total revenue generated
select sum(order_amount) as total_revenue
from customer_orders

--average order value
select AVG(order_amount) as average_order_value
from customer_orders

--monthly sales trend

select 
format(cast(order_date as date), 'yyyy-mm') as month,
SUM(order_amount)as monthly_sales
from customer_orders
group by FORMAT(cast(order_date as date),'yyyy-mm')
order by month

--2.Customer Analysis
--unique customers
select count(distinct customer_id) as unique_customers
from customer_orders

--average orders per customer
select
ROUND(count(order_id)/COUNT(distinct customer_id),2) as avg_irders_per_customer
from customer_orders

--high value customers(top 10)

select top 10 customer_id, 
sum(order_amount) as total_spent
from customer_orders
group by customer_id
order by total_spent desc

--3.payment status analysis
--number of completed and failed payments
select payment_status,
COUNT(payment_id) as count
from payments
group by payment_status

--payment method usage distribution
SELECT 
payment_method,
COUNT(payment_id) AS method_usage_count
FROM payments
GROUP BY payment_method
ORDER BY method_usage_count DESC

--4.order details report(by join tables)
SELECT 
co.order_id,
co.customer_id,
co.order_date,
co.order_amount,
co.order_status,
p.payment_id,
p.payment_date,
p.payment_amount,
p.payment_method,
p.payment_status
FROM customer_orders co
LEFT JOIN payments p ON co.order_id = p.order_id
ORDER BY co.order_date DESC

