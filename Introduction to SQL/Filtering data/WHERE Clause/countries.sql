CREATE TABLE countries (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    continent VARCHAR(50),
    population VARCHAR(15)
);

-- Thêm dữ liệu mẫu
INSERT INTO countries (id, name, continent, population)
VALUES 
(1, 'Austria', 'Europe', '8767919'),
(2, 'Belize', 'North America', '375909'),
(3, 'Botswana', 'Africa', '2230905'),
(4, 'Cambodia', 'Asia', '15626444'),
(5, 'Cameroon', 'Africa', '22709892');

SELECT 
    id, name, continent, population
FROM 
    countries
WHERE 
    continent = 'Africa';
