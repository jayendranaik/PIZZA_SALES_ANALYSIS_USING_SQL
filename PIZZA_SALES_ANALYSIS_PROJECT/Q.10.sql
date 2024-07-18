-- Q.10 Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS HOUR, COUNT(order_id) AS ORDERS
FROM
    ORDERS
GROUP BY HOUR
ORDER BY ORDERS DESC;






















