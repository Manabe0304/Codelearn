CREATE TABLE earthquakes (
    id SMALLINT PRIMARY KEY,
    date VARCHAR(10),
    latitude NUMERIC(10,3),
    longitude NUMERIC(10,3),
    depth INTEGER,
    magnitude NUMERIC(10,1),
    country TEXT
);

-- Chèn dữ liệu mẫu
INSERT INTO earthquakes (id, date, latitude, longitude, depth, magnitude, country)
VALUES 
(1, '22-05-1960', -38.143, -73.407, 25, 9.5, 'Indonesia'),
(2, '28-03-1964', 60.908, -147.339, 25, 9.2, 'Papua New Guinea'),
(3, '22-05-1960', -38.143, -73.407, 18, 9.5, 'Papua New Guinea'),
(4, '02-08-1906', 3.295, 95.982, 30, 9.1, 'Philipinese');

SELECT
*
FROM
earthquakes
WHERE
country IN ('Indonesia', 'Papua New Guinea')
ORDER BY
depth, id ASC
LIMIT
3;
