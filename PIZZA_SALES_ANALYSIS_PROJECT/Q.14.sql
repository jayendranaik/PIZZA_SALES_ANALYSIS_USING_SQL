-- Q.14 Determine the average revenue generated per order.

SELECT 
    ROUND(AVG(REVENUE),2) AS AVG_REVENUE_PER_ORDER
FROM
    (SELECT 
        order_details.order_id,
            SUM(order_details.quantity * pizzas.price) AS REVENUE
    FROM
        order_details
    JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
    GROUP BY order_details.order_id) AS REVENUE_PER_ORDER;










