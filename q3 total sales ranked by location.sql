SELECT l.location_id, l.city AS location_city, SUM(oi.quantity * oi.unit_price) AS total_sales   
FROM locations l
JOIN orders o 
ON l.location_id = o.location_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_date between '2023-01-01' AND '2023-03-30'
GROUP BY l.location_id, l.city
ORDER BY total_sales DESC;