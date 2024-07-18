-- Q.16 Find the total number of orders placed for each day of the week.

SELECT 
    DAYNAME(orders.order_date) AS DAYS,
    COUNT(orders.order_id) AS NUMBER_OF_ORDERS
FROM
    orders
GROUP BY DAYS
ORDER BY FIELD(DAYS,
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday');



