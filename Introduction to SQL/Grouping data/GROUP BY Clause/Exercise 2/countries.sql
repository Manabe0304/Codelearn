CREATE TABLE countries (
    country VARCHAR(50) NOT NULL,
    continent VARCHAR(50) NOT NULL,
    users SMALLINT NOT NULL
);

INSERT INTO countries (country, continent, users)
VALUES
('Armenia', 'Europe', 1000),
('France', 'Europe', 1300),
('Russia', 'Europe', 3000),
('USA', 'North America', 5000);

SELECT 
    continent,
    SUM(users) AS users
FROM 
    countries
GROUP BY 
    continent
ORDER BY 
    users DESC;
