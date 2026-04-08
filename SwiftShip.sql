
CREATE TABLE Partners (
    partner_id INT PRIMARY KEY,
    partner_name VARCHAR(100)
);
CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    partner_id INT,
    origin_city VARCHAR(100),
    destination_city VARCHAR(100),
    promised_date DATE,
    actual_delivery_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id)
);

CREATE TABLE DeliveryLogs (
    log_id INT PRIMARY KEY,
    shipment_id INT,
    log_status VARCHAR(100),
    log_date DATE,
    FOREIGN KEY (shipment_id) REFERENCES Shipments(shipment_id)
);

INSERT INTO Partners (partner_id, partner_name) VALUES
(1, 'DTDC'),
(2, 'The Professional Courier'),
(3, 'ST Courier');

INSERT INTO Shipments 
(shipment_id, partner_id, origin_city, destination_city, promised_date, actual_delivery_date, status)
VALUES
(101, 1, 'Chennai', 'Madurai', '2026-03-01', '2026-03-02', 'Delivered'),
(102, 1, 'Chennai', 'Trichy', '2026-03-01', '2026-03-05', 'Delivered'),
(103, 2, 'Bangalore', 'Madurai', '2026-03-02', '2026-03-02', 'Delivered'),
(104, 2, 'Delhi', 'Chennai', '2026-03-03', NULL, 'In Transit'),
(105, 3, 'Mumbai', 'Madurai', '2026-03-01', '2026-03-06', 'Returned'),
(106, 3, 'Mumbai', 'Trichy', '2026-03-02', '2026-03-03', 'Delivered'),
(107, 1, 'Chennai', 'Salem', '2026-03-04', '2026-03-06', 'Delivered'),
(108, 2, 'Delhi', 'Madurai', '2026-03-05', '2026-03-10', 'Delivered'),
(109, 3, 'Mumbai', 'Chennai', '2026-03-06', NULL, 'In Transit'),
(110, 1, 'Bangalore', 'Madurai', '2026-03-07', '2026-03-07', 'Delivered'),
(111, 2, 'Chennai', 'Coimbatore', '2026-03-08', '2026-03-12', 'Returned'),
(112, 1, 'Chennai', 'Madurai', '2026-03-09', '2026-03-11', 'Delivered'),
(113, 2, 'Delhi', 'Coimbatore', '2026-03-10', '2026-03-15', 'Delivered'),
(114, 3, 'Mumbai', 'Salem', '2026-03-11', NULL, 'In Transit'),
(115, 1, 'Bangalore', 'Chennai', '2026-03-12', '2026-03-12', 'Delivered'),
(116, 2, 'Chennai', 'Madurai', '2026-03-13', '2026-03-18', 'Returned'),
(117, 3, 'Delhi', 'Trichy', '2026-03-14', '2026-03-16', 'Delivered'),
(118, 1, 'Mumbai', 'Coimbatore', '2026-03-15', '2026-03-20', 'Delivered'),
(119, 2, 'Bangalore', 'Salem', '2026-03-16', NULL, 'In Transit'),
(120, 3, 'Chennai', 'Madurai', '2026-03-17', '2026-03-19', 'Delivered'),
(121, 1, 'Delhi', 'Trichy', '2026-03-18', '2026-03-25', 'Delivered'),
(122, 2, 'Mumbai', 'Chennai', '2026-03-19', '2026-03-19', 'Delivered'),
(123, 3, 'Bangalore', 'Coimbatore', '2026-03-20', '2026-03-23', 'Returned'),
(124, 1, 'Chennai', 'Salem', '2026-03-21', '2026-03-22', 'Delivered'),
(125, 2, 'Delhi', 'Madurai', '2026-03-22', '2026-03-28', 'Delivered'),
(126, 3, 'Mumbai', 'Trichy', '2026-03-23', NULL, 'In Transit');

INSERT INTO DeliveryLogs (log_id, shipment_id, log_status, log_date) VALUES
(1, 101, 'Picked', '2026-03-01'),
(2, 101, 'In Transit', '2026-03-01'),
(3, 101, 'Delivered', '2026-03-02'),
(4, 102, 'Picked', '2026-03-01'),
(5, 102, 'Delayed', '2026-03-03'),
(6, 102, 'Delivered', '2026-03-05'),
(7, 103, 'Picked', '2026-03-02'),
(8, 103, 'Delivered', '2026-03-02'),
(9, 104, 'Picked', '2026-03-03'),
(10, 104, 'In Transit', '2026-03-04'),
(11, 105, 'Picked', '2026-03-01'),
(12, 105, 'Returned', '2026-03-06'),
(13, 106, 'Picked', '2026-03-02'),
(14, 106, 'Delivered', '2026-03-03'),
(15, 108, 'Picked', '2026-03-05'),
(16, 108, 'Delayed', '2026-03-08'),
(17, 108, 'Delivered', '2026-03-10'),
(18, 109, 'Picked', '2026-03-06'),
(19, 109, 'In Transit', '2026-03-07'),
(20, 112, 'Picked', '2026-03-09'),
(21, 112, 'Delivered', '2026-03-11'),
(22, 113, 'Picked', '2026-03-10'),
(23, 113, 'Delayed', '2026-03-13'),
(24, 113, 'Delivered', '2026-03-15'),
(25, 114, 'Picked', '2026-03-11'),
(26, 114, 'In Transit', '2026-03-12'),
(27, 115, 'Picked', '2026-03-12'),
(28, 115, 'Delivered', '2026-03-12'),
(29, 116, 'Picked', '2026-03-13'),
(30, 116, 'Returned', '2026-03-18'),
(31, 117, 'Picked', '2026-03-14'),
(32, 117, 'Delivered', '2026-03-16'),
(33, 118, 'Picked', '2026-03-15'),
(34, 118, 'Delayed', '2026-03-18'),
(35, 118, 'Delivered', '2026-03-20'),
(36, 119, 'Picked', '2026-03-16'),
(37, 119, 'In Transit', '2026-03-17'),
(38, 120, 'Picked', '2026-03-17'),
(39, 120, 'Delivered', '2026-03-19'),
(40, 121, 'Picked', '2026-03-18'),
(41, 121, 'Delayed', '2026-03-22'),
(42, 121, 'Delivered', '2026-03-25'),
(43, 122, 'Picked', '2026-03-19'),
(44, 122, 'Delivered', '2026-03-19'),
(45, 123, 'Picked', '2026-03-20'),
(46, 123, 'Returned', '2026-03-23'),
(47, 124, 'Picked', '2026-03-21'),
(48, 124, 'Delivered', '2026-03-22'),
(49, 125, 'Picked', '2026-03-22'),
(50, 125, 'Delayed', '2026-03-26'),
(51, 125, 'Delivered', '2026-03-28'),
(52, 126, 'Picked', '2026-03-23'),
(53, 126, 'In Transit', '2026-03-24');

SELECT shipment_id, destination_city, promised_date, actual_delivery_date
FROM Shipments
WHERE actual_delivery_date > promised_date;

SELECT 
    p.partner_name,
    COUNT(CASE WHEN s.status = 'Delivered' THEN 1 END) AS successful_deliveries,
    COUNT(CASE WHEN s.status = 'Returned' THEN 1 END) AS returned_deliveries
FROM Partners p
JOIN Shipments s ON p.partner_id = s.partner_id
GROUP BY p.partner_name;

SELECT destination_city, COUNT(*) AS total_orders
FROM Shipments
WHERE promised_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY destination_city
ORDER BY total_orders DESC;

SELECT 
    p.partner_name,
    COUNT(*) AS total_shipments,
    
    COUNT(CASE 
        WHEN s.actual_delivery_date <= s.promised_date 
        THEN 1 END) AS on_time_deliveries,

    COUNT(CASE 
        WHEN s.actual_delivery_date > s.promised_date 
        THEN 1 END) AS delayed_deliveries,

    ROUND(
        (COUNT(CASE WHEN s.actual_delivery_date <= s.promised_date THEN 1 END) * 100.0) 
        / COUNT(*), 2
    ) AS success_rate

FROM Partners p
JOIN Shipments s ON p.partner_id = s.partner_id
WHERE s.status = 'Delivered'
GROUP BY p.partner_name
ORDER BY success_rate DESC;

SELECT 
    s.shipment_id, 
    s.destination_city, 
    MAX(d.log_date) AS last_update
FROM Shipments s
JOIN DeliveryLogs d ON s.shipment_id = d.shipment_id
WHERE s.status = 'In Transit'
GROUP BY s.shipment_id, s.destination_city
HAVING MAX(d.log_date) < CURDATE() - INTERVAL 3 DAY;