DROP VIEW IF EXISTS Customer_Order_Summary;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;


-- Step 1: Create Customers table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Step 2: Create Orders table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    order_date DATE NOT NULL,
    total_amount NUMERIC(10, 2) NOT NULL
);

-- Step 3: Insert sample data into Customers
INSERT INTO Customers (name, city) VALUES
('Neha Mishra', 'Delhi'),
('Amit Sharma', 'Mumbai'),
('Pooja Kumari', 'Delhi'),
('Rahul Singh', 'Bangalore'),
('Sneha Kapoor', 'Delhi');

-- Step 4: Insert sample data into Orders
INSERT INTO Orders (customer_id,  order_date , total_amount) VALUES
(1, '2025-08-01', 2500.00),
(1, '2025-08-05', 3200.00),
(2, '2025-08-02', 1500.00),
(3, '2025-08-03', 7000.00),
(3, '2025-08-08', 2000.00),
(4, '2025-08-04', 900.00),
(5, '2025-08-06', 6000.00);

-- Step 5: Create a complex view for customer order summary
CREATE VIEW Customer_Order_Summary AS
SELECT 
    c.name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.name, c.city
HAVING SUM(o.total_amount) > 5000  -- Only high-spending customers
ORDER BY total_spent DESC;

-- Step 6: Use the view
SELECT * FROM Customer_Order_Summary;