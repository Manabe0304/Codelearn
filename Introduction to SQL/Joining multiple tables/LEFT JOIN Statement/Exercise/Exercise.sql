-- Tạo bảng users
CREATE TABLE users (
    id SMALLINT PRIMARY KEY,
    city VARCHAR(50)
);

-- Thêm dữ liệu vào bảng users
INSERT INTO users (id, city) VALUES
(1, 'San Francisco'),
(2, 'Moscow'),
(3, 'London'),
(4, 'Washington'),
(5, 'New York'),
(6, 'Saint Petersburg'),
(7, 'Helsinki');

-- Tạo bảng cities
CREATE TABLE cities (
    city VARCHAR(50) PRIMARY KEY,
    country VARCHAR(50)
);

-- Thêm dữ liệu vào bảng cities
INSERT INTO cities (city, country) VALUES
('Moscow', 'Russia'),
('Saint Petersburg', 'Russia'),
('San Francisco', 'USA'),
('Washington', 'USA'),
('New York', 'USA'),
('London', 'England');

SELECT 
    users.id,
    COALESCE(cities.country, 'unknown') AS country
FROM 
    users
LEFT JOIN 
    cities
ON 
    users.city = cities.city
ORDER BY 
    users.id;
