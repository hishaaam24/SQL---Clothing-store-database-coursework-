-- Purpose of This Query
-- This query offers a detailed catalog view where each product is listed along with its description, price, and category. 
--This setup is useful for easily identifying product groups, analyzing category-based trends, 
-- or structuring product displays for user browsing.

SELECT p.product_id, p.name AS product_name, p.description, p.price, c.name AS category_name
FROM products p
JOIN categories c 
ON p.category_id = c.category_id
ORDER BY p.product_id ASC;
