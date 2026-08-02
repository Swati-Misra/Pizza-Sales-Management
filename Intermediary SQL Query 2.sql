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
-- Determine the distribution of orders by hour of the day.
 
 SELECT hour(order_time), count(order_id) from orders
 group by hour(order_time) order by hour(order_time) desc;
    