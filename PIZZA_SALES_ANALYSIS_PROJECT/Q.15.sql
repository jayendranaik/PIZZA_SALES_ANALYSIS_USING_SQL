-- Q.15 Calculate the total revenue generated for each pizza size.

SELECT 
    pizzas.size AS SIZE,
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS REVENUE
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY SIZE
ORDER BY REVENUE DESC;





