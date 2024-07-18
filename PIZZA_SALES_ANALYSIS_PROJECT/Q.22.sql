-- Q.22 Identify the top 5 customers who generated the most revenue and their order details.

SELECT 
    orders.order_id AS CUSTOMER,
    SUM(order_details.quantity * pizzas.price) AS PURCHASES,
    orders.order_date,
    orders.order_time,
    SUM(order_details.quantity) AS QUANTITY
FROM
    order_details
        JOIN
    orders ON order_details.order_id = orders.order_id
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
GROUP BY CUSTOMER
ORDER BY PURCHASES DESC
LIMIT 5;





