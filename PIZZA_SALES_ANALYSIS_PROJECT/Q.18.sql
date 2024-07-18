-- Q.18 Analyze the cumulative revenue generated over time.

SELECT order_date,
SUM(REVENUE) OVER(order by order_date) AS CUMULATIVE_REVENUE
FROM
(SELECT orders.order_date,SUM(order_details.quantity * pizzas.price) AS REVENUE
FROM orders JOIN order_details
ON orders.order_id = order_details.order_id
JOIN pizzas
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY orders.order_date) AS SALES; 















