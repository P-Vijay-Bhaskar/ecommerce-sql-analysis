--Total sales by product category--
SELECT
    category,
    SUM(order_amount) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;

-- Repeat customers using subquery--
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Customer segmentation using CASE--
SELECT
    customer_id,
    SUM(order_amount) AS total_spent,
    CASE
        WHEN SUM(order_amount) > 50000 THEN 'High Value'
        WHEN SUM(order_amount) BETWEEN 20000 AND 50000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM orders
GROUP BY customer_id;

-- Using CTE for monthly sales--
WITH monthly_sales AS (
    SELECT
        DATE_TRUNC('month', order_date) AS month,
        SUM(order_amount) AS revenue
    FROM orders
    GROUP BY month
)
SELECT * FROM monthly_sales
ORDER BY month;
