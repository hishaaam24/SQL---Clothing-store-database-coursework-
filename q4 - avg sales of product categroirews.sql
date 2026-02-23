-- Identify top-performing categories and focus resources on them.
-- Optimize pricing and product assortment in each category.
-- Enhance category management and cross-selling strategies.
-- Improve inventory planning and allocation.
-- Detect emerging trends in customer preferences.
-- Overall, this data-driven insight can help the store make more informed decisions to drive increased revenue and profitability across its product categories.

SELECT c.name AS category_names, ROUND(AVG(oi.quantity * oi.unit_price),2) AS average_sales
FROM order_Items oi
JOIN products p 
ON oi.product_id = p.product_id
JOIN categories c
ON p.category_id = c.category_id
JOIN orders o 
ON oi.order_id = o.order_id
where o.order_date between '2023-01-01' AND '2023-03-30'
GROUP BY c.name
ORDER BY average_sales DESC;