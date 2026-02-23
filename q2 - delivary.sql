SELECT o.order_id, c.name AS customer_name, o.order_date, o.delivery_date, 
(o.delivery_date - o.order_date) AS days_to_delivery, l.city AS store_location
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
JOIN locations l 
ON c.location_id = l.location_id
ORDER BY days_to_delivery ASC;
