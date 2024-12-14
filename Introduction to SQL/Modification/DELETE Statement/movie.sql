CREATE TABLE movies (
    id SMALLINT PRIMARY KEY,
    full_name VARCHAR(50),
    film_title VARCHAR(50)
);

-- Thêm dữ liệu vào bảng
INSERT INTO movies (id, full_name, film_title) VALUES
(1, 'ALEC WAYNE', 'ALADDIN CALENDAR'),
(2, 'BOB FAWCETT', 'ALADDIN CALENDAR'),
(3, 'CHRISTIAN GABLE', 'ACADEMY DINOSAUR'),
(4, 'DUSTIN TAUTOU', 'AFRICAN EGG'),
(5, 'ELVIS MARX', 'ALABAMA DEVIL'),
(6, 'FAY WINSLET', 'AFFAIR PREJUDICE');

--Delete records from the `movies` table that are neither "ALADDIN CALENDAR" nor "AFRICAN EGG".
DELETE FROM 
movies
WHERE
film_title NOT IN ('ALADDIN CALENDAR', 'AFRICAN EGG');

-- Show the information of all movies
SELECT * FROM movies;
