SELECT 
	c.customer_id, c.name AS customer_name, l.city AS customer_city, l.address AS customer_address, 
	SUM(oi.quantity * oi.unit_price) AS total_order_price
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
JOIN order_Items oi 
ON o.order_id = oi.order_id
JOIN locations l 
ON c.location_id = l.location_id
GROUP BY c.customer_id, c.name, l.city, l.address
ORDER BY total_order_price DESC
LIMIT 5;
