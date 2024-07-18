-- Q.7 Find the total quantity of pizzas ordered for each pizza size.

SELECT 
    pizzas.size AS SIZE, SUM(order_details.quantity) AS QUANTITY
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY SIZE
ORDER BY QUANTITY DESC;





