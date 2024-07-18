-- Q.19 Determine the top 3 most ordered pizza types based on revenue for each pizza category.

SELECT CATEGORY, NAME, REVENUE FROM
(SELECT CATEGORY, NAME, REVENUE,
RANK() OVER(partition by CATEGORY ORDER BY REVENUE DESC) AS RN
FROM
(SELECT pizza_types.category,pizza_types.name,
SUM(order_details.quantity * pizzas.price) AS REVENUE
FROM pizza_types JOIN pizzas
ON pizza_types.﻿pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category,pizza_types.name
ORDER BY REVENUE DESC) AS A) AS B
WHERE RN <= 3;







