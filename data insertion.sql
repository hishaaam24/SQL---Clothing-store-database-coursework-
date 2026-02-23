INSERT INTO Categories (name) VALUES
('Tops'),         -- T-shirts, blouses, shirts, etc.
('Bottoms'),      -- Jeans, trousers, skirts, shorts, etc.
('Outerwear'),    -- Jackets, coats, hoodies, etc.
('Dresses'),      -- All types of dresses
('Footwear'),     -- Shoes, boots, sandals, etc.
('Accessories');  -- Hats, scarves, belts, bags, etc.



---------------------------------------------------------------------------------------------------------------

INSERT INTO Locations (city, address) VALUES
('London', '123 Baker St'),
('Manchester', '45 King St'),
('Birmingham', '200 High St'),
('Liverpool', '78 Queen St'),
('Edinburgh', '10 Royal Mile');

---------------------------------------------------------------------------------------------------------------


INSERT INTO Products (name, description, composition, size, price, category_id) VALUES

('Basic T-Shirt', 'Soft cotton T-shirt', '100% Cotton', 'M', 15.00, 1),
('Silk Blouse', 'Elegant silk blouse', '100% Silk', 'L', 45.00, 1),
('Polo Shirt', 'Classic polo shirt', 'Cotton blend', 'XL', 25.00, 1),
('Jeans', 'Classic blue jeans', 'Denim', '32', 50.00, 2),
('Chinos', 'Casual chinos', 'Cotton', '34', 40.00, 2),
('Sweatpants', 'Comfortable joggers', 'Fleece', 'L', 35.00, 2),
('Denim Jacket', 'Stylish denim jacket', 'Denim', 'M', 60.00, 3),
('Leather Jacket', 'Genuine leather jacket', 'Leather', 'L', 120.00, 3),
('Winter Coat', 'Warm padded coat', 'Polyester', 'XL', 100.00, 3),
('Summer Dress', 'Lightweight floral dress', 'Cotton', 'M', 30.00, 4),
('Evening Gown', 'Elegant evening dress', 'Silk blend', 'L', 150.00, 4),
('Sneakers', 'Comfortable sneakers', 'Synthetic', '9', 55.00, 5),
('Leather Boots', 'Classic leather boots', 'Leather', '10', 80.00, 5),
('Sandals', 'Casual summer sandals', 'Leather', '8', 25.00, 5),
('Baseball Cap', 'Cotton cap with logo', '100% Cotton', 'One Size', 15.00, 6),
('Wool Scarf', 'Warm winter scarf', '100% Wool', 'One Size', 20.00, 6),
('Leather Belt', 'Adjustable leather belt', 'Leather', 'M', 30.00, 6),
('Raincoat', 'Waterproof raincoat', 'Polyester', 'M', 70.00, 3),       
('Sports Jacket', 'Lightweight sports jacket', 'Nylon', 'L', 50.00, 3), 
('Yoga Pants', 'Stretchy yoga pants', 'Spandex', 'M', 40.00, 2);        



---------------------------------------------------------------------------------------------------------------

INSERT INTO Employees (name, position, location_id) VALUES
('Alice Johnson', 'Manager', 1),
('Bob Smith', 'Sales', 1),
('Catherine Adams', 'Manager', 2),
('Daniel White', 'Sales', 2),
('Emily Brown', 'Manager', 3),
('Frank Green', 'Sales', 3),
('Georgia Wilson', 'Manager', 4),
('Harry Davies', 'Sales', 4),
('Isla Young', 'Manager', 5),
('Jack Harris', 'Sales', 5);

---------------------------------------------------------------------------------------------------------------


INSERT INTO Customers (name, email, phone, location_id) VALUES
('John Doe', 'john@example.com', '0712345678', 1),
('Jane Smith', 'jane@example.com', '0798765432', 2),
('Peter Brown', 'peter@example.com', '0745698741', 3),
('Lucy White', 'lucy@example.com', '0723456789', 4),
('Chris Green', 'chris@example.com', '0711111111', 5),
('Laura Black', 'laura@example.com', '0765432109', 1),
('Michael Evans', 'michael@example.com', '0756789123', 2),
('Sophie Lee', 'sophie@example.com', '0745678910', 3),
('Tom Harris', 'tom@example.com', '0712345670', 4),
('Olivia Clark', 'olivia@example.com', '0798765433', 5),
('Ethan Walker', 'ethan@example.com', '0712345671', 1),
('Isabelle Wright', 'isabelle@example.com', '0798765434', 2),
('Liam Scott', 'liam@example.com', '0712345672', 3),
('Megan Hall', 'megan@example.com', '0798765435', 4),
('Oliver Adams', 'oliver@example.com', '0712345673', 5),
('Charlotte King', 'charlotte@example.com', '0798765436', 1),
('Mason Bell', 'mason@example.com', '0712345674', 2),
('Amelia Wood', 'amelia@example.com', '0798765437', 3),
('Jack Collins', 'jack@example.com', '0712345675', 4),
('Ella Turner', 'ella@example.com', '0798765438', 5);

---------------------------------------------------------------------------------------------------------------
INSERT INTO Orders (customer_id, location_id, order_date, delivery_date) VALUES

(1, 1, '2023-01-01', '2023-01-02'),
(6, 1, '2023-01-10', '2023-01-12'),
(11, 1, '2023-02-15', '2023-02-17'),
(16, 1, '2023-03-05', '2023-03-06'),
(2, 2, '2023-01-02', '2023-01-05'),
(7, 2, '2023-01-20', '2023-01-24'),
(12, 2, '2023-02-18', '2023-02-20'),
(17, 2, '2023-03-15', '2023-03-17'),
(3, 3, '2023-01-03', '2023-01-07'),
(8, 3, '2023-01-25', '2023-01-30'),
(13, 3, '2023-02-19', '2023-02-23'),
(18, 3, '2023-03-18', '2023-03-21'),
(4, 4, '2023-01-04', '2023-01-09'),
(9, 4, '2023-01-28', '2023-02-02'),
(14, 4, '2023-02-20', '2023-02-25'),
(19, 4, '2023-03-20', '2023-03-26'),
(5, 5, '2023-01-05', '2023-01-12'),
(10, 5, '2023-02-01', '2023-02-09'),
(15, 5, '2023-02-25', '2023-03-05'),
(20, 5, '2023-03-21', '2023-03-29');

---------------------------------------------------------------------------------------------------------------


INSERT INTO Order_Items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 3, 15.00),         -- Basic T-Shirt
(1, 2, 2, 45.00),         -- Silk Blouse
(2, 4, 1, 50.00),         -- Jeans
(2, 6, 2, 35.00),         -- Sweatpants
(3, 7, 1, 60.00),         -- Denim Jacket
(3, 11, 2, 30.00),        -- Summer Dress
(4, 5, 1, 80.00),         -- Leather Boots
(4, 13, 3, 25.00),        -- Sandals
(5, 3, 2, 25.00),         -- Polo Shirt
(5, 8, 1, 120.00),        -- Leather Jacket
(6, 10, 1, 150.00),       -- Evening Gown
(6, 15, 2, 15.00),        -- Wool Scarf
(7, 14, 4, 25.00),        -- Leather Belt
(8, 16, 1, 70.00),        -- Raincoat
(9, 12, 2, 55.00),        -- Sneakers
(9, 17, 1, 50.00),        -- Sports Jacket
(10, 9, 1, 100.00),       -- Winter Coat
(11, 3, 2, 25.00),        -- Polo Shirt
(11, 11, 2, 30.00),       -- Summer Dress
(12, 6, 3, 35.00),        -- Sweatpants
(13, 2, 2, 45.00),        -- Silk Blouse
(13, 5, 1, 80.00),        -- Leather Boots
(14, 1, 3, 15.00),        -- Basic T-Shirt
(14, 8, 1, 120.00),       -- Leather Jacket
(15, 12, 2, 55.00),       -- Sneakers
(16, 4, 1, 50.00),        -- Jeans
(16, 17, 1, 50.00),       -- Sports Jacket
(17, 18, 2, 40.00),       -- Yoga Pants
(18, 10, 1, 150.00),      -- Evening Gown
(19, 14, 3, 25.00),       -- Leather Belt
(19, 13, 2, 25.00),       -- Sandals
(20, 16, 1, 70.00);       -- Raincoat






