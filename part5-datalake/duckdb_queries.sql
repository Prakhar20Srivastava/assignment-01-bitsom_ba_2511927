-- Q1: List all customers along with the total number of orders they have placed


Select
 c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders
FROM "C:\Users\inas19\Downloads\BitSom\assignment\datasets\customers.csv" c
LEFT JOIN  "C:\Users\inas19\Downloads\BitSom\assignment\datasets\orders.json" o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_orders DESC;

-- Q2: Find the top 3 customers by total order value

SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_order_value
FROM "C:\Users\inas19\Downloads\BitSom\assignment\datasets\customers.csv" c
JOIN  "C:\Users\inas19\Downloads\BitSom\assignment\datasets\orders.json"o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_order_value DESC
LIMIT 3;



-- Q3: List all products purchased by customers from Bangalore
SELECT DISTINCT
    p.product_id,
    p.product_name,
FROM "C:\Users\inas19\Downloads\BitSom\assignment\datasets\customers.csv" c
JOIN  "C:\Users\inas19\Downloads\BitSom\assignment\datasets\orders.json" o
    ON c.customer_id = o.customer_id
JOIN  "C:\Users\inas19\Downloads\BitSom\assignment\datasets\products.parquet" p
    ON o.order_id = p.order_id
WHERE c.city = 'Bangalore';




-- Q4: Join all three files to show: customer name, order date, product name, and quantity
SELECT 
    c.name AS customer_name,
    o.order_date,
    p.product_name,
    o.num_items
FROM "C:\Users\inas19\Downloads\BitSom\assignment\datasets\customers.csv" c
JOIN "C:\Users\inas19\Downloads\BitSom\assignment\datasets\orders.json" o
    ON c.customer_id = o.customer_id
JOIN"C:\Users\inas19\Downloads\BitSom\assignment\datasets\products.parquet" p
    ON o.order_id = p.order_id
ORDER BY o.order_date;