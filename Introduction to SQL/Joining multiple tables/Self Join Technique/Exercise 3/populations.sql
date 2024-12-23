-- Tạo bảng populations
CREATE TABLE populations (
    pop_id SMALLINT PRIMARY KEY,
    country_code CHAR(3) NOT NULL,
    year CHAR(4) NOT NULL,
    fertility_rate DECIMAL(5,3),
    life_expectation DECIMAL(5,4),
    size BIGINT NOT NULL
);

-- Chèn dữ liệu mẫu vào bảng populations
INSERT INTO populations (pop_id, country_code, year, fertility_rate, life_expectation, size) VALUES
(20, 'ABW', '2010', 1.704, 74.9535, 101597),
(19, 'ABW', '2015', 1.647, 75.5736, 103889),
(2,  'AFG', '2010', 5.746, 58.9708, 27962200),
(1,  'AFG', '2015', 4.653, 60.7172, 32526600);

SELECT
a.country_code,
a.size AS size2010,
b.size AS size2015,
round(((cast(b.size as decimal) - cast(a.size as decimal)) / cast(a.size as decimal) * 100), 5) as growth_perc
FROM
populations a
JOIN
populations b
ON a.country_code=b.country_code
AND a.year='2010'
AND b.year='2015'
ORDER BY
a.country_code;
