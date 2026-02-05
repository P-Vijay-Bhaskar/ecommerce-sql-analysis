CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    category VARCHAR(50),
    order_amount DECIMAL(10,2),
    order_date DATE
);
INSERT INTO orders (order_id, customer_id, category, order_amount, order_date) VALUES
(1, 101, 'Electronics', 15000, '2024-01-10'),
(2, 102, 'Clothing', 5000, '2024-01-15'),
(3, 101, 'Electronics', 20000, '2024-02-05'),
(4, 103, 'Home Appliances', 30000, '2024-02-12'),
(5, 104, 'Clothing', 8000, '2024-02-20'),
(6, 102, 'Electronics', 25000, '2024-03-01'),
(7, 105, 'Furniture', 40000, '2024-03-10'),
(8, 101, 'Furniture', 18000, '2024-03-15'),
(9, 103, 'Electronics', 22000, '2024-04-05'),
(10, 104, 'Home Appliances', 12000, '2024-04-18');
