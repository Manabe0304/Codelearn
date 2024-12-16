CREATE TABLE movies (
    id SMALLINT PRIMARY KEY,
    full_name VARCHAR(50),
    film_title VARCHAR(50)
);

-- Thêm dữ liệu mẫu
INSERT INTO movies (id, full_name, film_title)
VALUES 
(1, 'ALEC WAYNE', 'ALADDIN CALENDAR'),
(2, 'BOB FAWCETT', 'ALADDIN CALENDAR'),
(3, 'CHRISTIAN GABLE', 'ACADEMY DINOSAUR'),
(4, 'DUSTIN TAUTOU', 'AFRICAN EGG'),
(5, 'ELVIS MARX', 'ALABAMA DEVIL'),
(6, 'FAY WINSLET', 'AFFAIR PREJUDICE');

SELECT 
    id, full_name, film_title
FROM 
    movies
WHERE 
    film_title IN ('ALADDIN CALENDAR', 'AFRICAN EGG');
