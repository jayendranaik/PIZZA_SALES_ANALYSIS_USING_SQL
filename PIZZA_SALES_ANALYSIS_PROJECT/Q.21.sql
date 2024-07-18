-- Q.21 Identify Peak Hours for Pizza Orders.

SELECT 
    HOUR(orders.order_time) AS HOURS_OF_A_DAY,
    SUM(order_details.quantity) AS TOTAL_PIZZAS_ORDERED
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
GROUP BY HOURS_OF_A_DAY
ORDER BY TOTAL_PIZZAS_ORDERED DESC
LIMIT 3;







