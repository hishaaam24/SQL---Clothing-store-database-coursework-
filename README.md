Assumptions and Rationales
Customers Table:

Assumes customers have basic details like name, contact, and location ID to link with locations.
Each customer can be uniquely identified by a customer_id.
Additional columns like email and phone allow for future expansions if contact information is needed.
Orders Table:

order_id uniquely identifies each order.
Each order links to a customer_id and location_id to trace customer and store branch.
Includes order_date and delivery_date for tracking order completion.
Order_Items Table:

Serves as a junction between orders and products for a many-to-many relationship.
Tracks quantity and unit_price to calculate the line total for each order item.
Products Table:

Basic details such as product_id, name, description, composition, size, and price.
Links to category_id to allow product categorization (e.g., women’s wear, sports, etc.).
Categories Table:

Simple category structure with category_id and name.
Each category can contain multiple products (one-to-many relationship).
Locations Table:

Tracks store locations with location_id, city, and address.
Links to manager_id from the employees table to identify each location’s manager.
Employees Table:

Contains essential staff information like employee_id, name, position, location_id.
Enables tracking of managers and regular staff by assigning position.
Entity-Relationship Diagram (ERD)
The relationships are structured as follows:

One-to-Many: Customers to Orders, Categories to Products, Locations to Employees, Locations to Orders
Many-to-One: Products to Categories, Employees to Locations
Many-to-Many: Orders to Products (via Order_Items)
Here is the ERD in textual form:

Customers -|---|< Orders
Orders -|---|< Order_Items >|---|< Products
Categories -|---|< Products
Locations -|---|< Orders
Locations -|---|< Employees
