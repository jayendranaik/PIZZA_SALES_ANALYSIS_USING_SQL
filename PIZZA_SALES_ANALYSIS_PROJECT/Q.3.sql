-- Q.3 Identify the highest-priced pizza.

SELECT 
    pizza_types.name AS NAME, pizzas.price AS PRICE
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.﻿pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;














