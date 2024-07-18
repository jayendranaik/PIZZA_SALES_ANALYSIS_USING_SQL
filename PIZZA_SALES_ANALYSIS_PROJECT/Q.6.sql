-- Q.6 Identify the date with the highest number of orders placed.

SELECT 
    orders.order_date AS DATE, COUNT(orders.order_id) AS ORDERS
FROM
    orders
GROUP BY DATE
ORDER BY ORDERS DESC
LIMIT 1;







