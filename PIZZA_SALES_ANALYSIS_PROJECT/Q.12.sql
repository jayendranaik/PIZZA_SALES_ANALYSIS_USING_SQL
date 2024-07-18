-- Q.12 Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(QUANTITY),0) AS AVG_ORDER_PER_DAY
FROM
    (SELECT 
        orders.order_date AS DATE,
            SUM(order_details.quantity) AS QUANTITY
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY DATE) AS QUANTITY_PER_DAY;
    
    
    
    
    
    
    
    