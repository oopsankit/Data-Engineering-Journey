-- Day 01: CTE vs Subquery
-- Topic: Readability and reusability in analytics queries

-- Example using CTE
WITH customer_sales AS (
    SELECT
        customer_id,
        SUM(amount) AS total_sales
    FROM sales
    GROUP BY customer_id
)
SELECT *
FROM customer_sales
WHERE total_sales > 10000;

-- Same logic using subquery (less readable for complex logic)
SELECT *
FROM (
    SELECT
        customer_id,
        SUM(amount) AS total_sales
    FROM sales
    GROUP BY customer_id
) t
WHERE total_sales > 10000;
