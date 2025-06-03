USE sales_online;
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-05', 150.00, 101),
(2, '2023-01-15', 200.00, 102),
(3, '2023-01-25', 180.00, 103),
(4, '2023-02-01', 220.00, 104),
(5, '2023-02-10', 170.00, 105),
(6, '2023-02-20', 130.00, 106),
(7, '2023-02-28', 210.00, 107),
(8, '2023-03-05', 250.00, 108),
(9, '2023-03-12', 300.00, 109),
(10, '2023-03-20', 275.00, 110),
(11, '2023-04-02', 190.00, 111),
(12, '2023-04-15', 230.00, 112),
(13, '2023-04-29', 210.00, 113),
(14, '2023-05-01', 160.00, 114),
(15, '2023-05-10', 140.00, 115),
(16, '2023-05-20', 300.00, 116),
(17, '2023-06-05', 190.00, 117),
(18, '2023-06-14', 220.00, 118),
(19, '2023-06-25', 310.00, 119),
(20, '2023-07-03', 280.00, 120),
(21, '2023-07-11', 260.00, 121),
(22, '2023-07-27', 300.00, 122);

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;


