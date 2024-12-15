CREATE TABLE address (
    postal_code INT,
    address VARCHAR(250),
    district VARCHAR(50),
    city VARCHAR(50)
);

-- Thêm dữ liệu mẫu
INSERT INTO address (postal_code, address, district, city)
VALUES
(4166, '939 Probolinggo Loop', 'Galicia', 'A Corua (La Corua)'),
(77459, '733 Mandaluyong Place', 'Asir', 'Abha');

SELECT 
postal_code || ', ' || address || ', ' || district || ', ' || city AS full_address
FROM
address;
