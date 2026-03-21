-- Q1: Total sales revenue by product category for each month
SELECT
    d.year,
    d.month,
    p.category,
    SUM(f.total_amount) AS total_revenue
FROM fact_sales f
JOIN dim_date d
    ON f.date_id = d.date_id
JOIN dim_product p
    ON f.product_id = p.product_id
GROUP BY
    d.year, d.month, p.category
ORDER BY
    d.year, d.month, p.category;


-- Q2: Top 2 performing stores by total revenue
SELECT
    s.store_name,
    SUM(f.total_amount) AS total_revenue
FROM fact_sales f
JOIN dim_store s
    ON f.store_id = s.store_id
GROUP BY
    s.store_name
ORDER BY
    total_revenue DESC
LIMIT 2;



-- Q3: Month-over-month sales trend across all stores
SELECT
    year,
    month,
    total_revenue,
    LAG(total_revenue) OVER (ORDER BY year, month) AS prev_month_revenue,
    ROUND(
        (total_revenue - LAG(total_revenue) OVER (ORDER BY year, month)) * 100.0 /
        LAG(total_revenue) OVER (ORDER BY year, month),
        2
    ) AS growth_percent
FROM (
    SELECT
        d.year,
        d.month,
        SUM(f.total_amount) AS total_revenue
    FROM fact_sales f
    JOIN dim_date d
        ON f.date_id = d.date_id
    GROUP BY
        d.year, d.month
) AS t
ORDER BY
    year, month;

