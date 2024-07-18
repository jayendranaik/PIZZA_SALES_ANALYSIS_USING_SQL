-- Q.20 Calculate the monthly revenue generated from pizza sales.

SELECT 
    DATE_FORMAT(orders.order_date, '%Y-%M') AS MONTHS,
    ROUND(SUM(order_details.quantity * pizzas.price),
            3) AS MONTHLY_REVENUE
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
GROUP BY MONTHS
ORDER BY MONTHS;



