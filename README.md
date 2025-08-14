# task7createView
Customer Order Summary View – PostgreSQL Example

📌 Project Description

This project demonstrates how to create and use a SQL View in PostgreSQL for summarizing customer orders.
It includes:

Table creation (Customers and Orders)

Sample data insertion

Complex view creation using JOIN, GROUP BY, and HAVING clauses

Querying the view to get summarized results



---

📂 Files in This Project

customer_order_summary.sql → Contains all SQL commands to:

1. Create tables


2. Insert data


3. Create a view


4. Query the view





---

💡 Features of the View

Combines customer and order data

Counts total orders per customer

Calculates total spending per customer

Filters high-value customers (total_spent > 5000)

Orders results from highest spender to lowest



---

🚀 How to Run

1. Open pgAdmin or any PostgreSQL client.


2. Create or select a database.


3. Run the SQL script:

\i 'path/to/customer_order_summary.sql'


4. Query the view:

SELECT * FROM Customer_Order_Summary;




---

📊 Example Output

name	city	total_orders	total_spent

Pooja Kumari	Delhi	2	9000.00
Neha Mishra	Delhi	2	5700.00
Sneha Kapoor	Delhi	1	6000.00



---

🛠 Technologies Used

PostgreSQL
---

SQL Views

JOIN, GROUP BY, HAVING
