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
-- Join the necessary tables to find the total quantity of each pizza category ordered.
 
 SELECT 
    pizza_types.category,
    SUM(order_details.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY quantity DESC;
 
 