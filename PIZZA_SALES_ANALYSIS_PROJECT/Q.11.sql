-- Q.11 Find the category-wise distribution of pizzas.

SELECT 
    category AS CATEGORY, COUNT(name) AS COUNT_OF_NAMES
FROM
    pizza_types
GROUP BY CATEGORY
ORDER BY COUNT_OF_NAMES DESC; 








