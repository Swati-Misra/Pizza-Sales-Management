CREATE DATABASE pizzahouse;
select * from pizzahouse.pizza_types;
select * from pizzahouse.pizzas;
CREATE table orders (
order_id int not null,
order_date date not null,
order_time time not null,
primary key (order_id));
select * from orders;

CREATE table order_details (
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key (order_details_id));

select * from order_details;

-- Retrieve the total number of orders placed.
-- Group the orders by date and calculate the average number of pizzas ordered per day.
 
Select round(avg(quantity), 0) from
(SELECT orders.order_date, SUM(order_details.quantity) as quantity
FROM orders JOIN order_details
ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) as order_quantity;
 