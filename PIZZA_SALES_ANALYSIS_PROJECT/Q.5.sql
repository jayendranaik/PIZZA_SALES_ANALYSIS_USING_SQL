-- Q.5 List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pizza_types.name AS PIZZA_NAME,
    SUM(order_details.quantity) AS QUANTITIES_ORDERED
FROM
    pizza_types
        INNER JOIN
    pizzas ON pizza_types.﻿pizza_type_id = pizzas.pizza_type_id
        INNER JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY QUANTITIES_ORDERED DESC
LIMIT 5;


























