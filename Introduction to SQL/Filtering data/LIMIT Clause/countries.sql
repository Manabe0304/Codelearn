CREATE TABLE countries (
    id SMALLINT PRIMARY KEY,
    city VARCHAR(50),
    country VARCHAR(50),
    population VARCHAR(15)
);

-- Chèn dữ liệu mẫu
INSERT INTO countries (id, city, country, population)
VALUES 
(1, 'Guadalajara', 'Mexico', '1500800'),
(2, 'Toronto', 'Canada', '2795060'),
(3, 'Houston', 'United States', '2195914'),
(4, 'New York', 'United States', '8405837'),
(5, 'Philadelphia', 'United States', '1553165'),
(6, 'Havana', 'Cuba', '2106146'),
(7, 'Mexico City', 'Mexico', '8555500'),
(8, 'Los Angeles', 'United States', '3884307'),
(9, 'Ecatepec de Morelos', 'Mexico', '1742000'),
(10, 'Montreal', 'Canada', '1717767'),
(11, 'Chicago', 'United States', '2718782'),
(12, 'Phoenix', 'United States', '1513367');

SELECT
city, population
FROM
countries
WHERE country = 'United States'
ORDER BY
population DESC
LIMIT 2 OFFSET 2;
