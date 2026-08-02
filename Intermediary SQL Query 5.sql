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
-- Determine the top 3 most ordered pizza types based on revenue.
 
 SELECT pizza_types.name,
 sum(order_details.quantity*pizzas.price) as revenue
 FROM pizza_types join pizzas
 on pizza_types.pizza_type_id= pizzas.pizza_type_id
JOIN order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by revenue desc limit 3;