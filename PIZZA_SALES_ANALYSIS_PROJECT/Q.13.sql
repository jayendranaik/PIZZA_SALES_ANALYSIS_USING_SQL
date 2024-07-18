-- Q.13 Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pizza_types.name AS NAME,
    SUM(order_details.quantity * pizzas.price) AS REVENEU
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.﻿pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY NAME
ORDER BY REVENEU DESC
LIMIT 3;









