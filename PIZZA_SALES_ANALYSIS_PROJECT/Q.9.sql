-- Q.9 Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_types.category AS CATEGORY,
    SUM(order_details.quantity) AS QUANTITY
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.﻿pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY CATEGORY
ORDER BY QUANTITY DESC;







