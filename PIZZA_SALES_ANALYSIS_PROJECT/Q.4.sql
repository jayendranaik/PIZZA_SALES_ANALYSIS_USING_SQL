-- Q.4 Identify the most common pizza size ordered.

SELECT 
    pizzas.size AS PIZZA_SIZE,
    COUNT(order_details.order_details_id) AS PIZZA_SIZE_ORDERED
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY PIZZA_SIZE_ORDERED DESC
LIMIT 1;





















