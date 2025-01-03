CREATE TABLE actor (
    actor_id SMALLINT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate TIMESTAMP
);

-- Thêm dữ liệu mẫu
INSERT INTO actor (actor_id, first_name, last_name, birthdate)
VALUES 
(1, 'PENELOPE', 'GUINESS', '1998-02-01 00:00:00'),
(2, 'NICK', 'WAHLBERG', '1997-01-01 00:00:00'),
(3, 'ED', 'CHASE', '1998-02-06 00:00:00'),
(4, 'JENNIFER', 'DAVIS', '1999-12-12 00:00:00'),
(5, 'JOHNNY', 'LOLLOBRIGIDA', '2001-01-02 00:00:00');

SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    CAST(birthdate AS DATE) AS birthdate
FROM 
    actor
ORDER BY 
    birthdate DESC;
