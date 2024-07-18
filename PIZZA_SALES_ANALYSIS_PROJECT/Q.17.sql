-- Q.17 Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pizza_types.category AS PIZZA_TYPES,
    CONCAT(ROUND(SUM(order_details.quantity * pizzas.price) / (SELECT 
                            ROUND(SUM(order_details.quantity * pizzas.price),
                                        2) AS TOTAL_REVENUE
                        FROM
                            order_details
                                JOIN
                            pizzas ON order_details.pizza_id = pizzas.pizza_id) * 100,
                    2),
            ' ',
            '%') AS PERCENTAGE_OF_TOTAL_REVENUE
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.﻿pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY PIZZA_TYPES
ORDER BY PERCENTAGE_OF_TOTAL_REVENUE DESC;













