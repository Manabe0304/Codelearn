-- Tạo bảng actor
CREATE TABLE actor (
    actor_id SMALLINT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    last_update TIMESTAMP
);

-- Tạo bảng film
CREATE TABLE film (
    film_id SMALLINT PRIMARY KEY,
    title VARCHAR(255)
);

-- Tạo bảng film_actor (không khai báo khóa ngoại ban đầu)
CREATE TABLE film_actor (
    actor_id SMALLINT,
    film_id SMALLINT,
    last_update TIMESTAMP,
    PRIMARY KEY (actor_id, film_id)
);

-- Chèn dữ liệu vào bảng actor
INSERT INTO actor (actor_id, first_name, last_name, last_update) VALUES
(1, 'PENELOPE', 'GUINESS', '2006-02-15 04:34:33'),
(2, 'NICK', 'WAHLBERG', '2006-02-15 04:34:33'),
(3, 'ED', 'CHASE', '2006-02-15 04:34:33'),
(4, 'JENNIFER', 'DAVIS', '2006-02-15 04:34:33'),
(5, 'JOHNNY', 'LOLLOBRIGIDA', '2006-02-15 04:34:33');

-- Chèn dữ liệu vào bảng film
INSERT INTO film (film_id, title) VALUES
(1, 'ACADEMY DINOSAUR'),
(2, 'ACE GOLDFINGER'),
(3, 'ADAPTATION HOLES');

-- Chèn dữ liệu vào bảng film_actor
INSERT INTO film_actor (actor_id, film_id, last_update) VALUES
(1, 1, '2006-02-15 05:05:03'),
(4, 1, '2006-02-15 05:05:03'),
(1, 3, '2006-02-15 05:05:03'),
(2, 3, '2006-02-15 05:05:03');

-- Thêm khóa ngoại cho actor_id trong bảng film_actor
ALTER TABLE film_actor
ADD CONSTRAINT fk_actor FOREIGN KEY (actor_id)
REFERENCES actor(actor_id);

-- Thêm khóa ngoại cho film_id trong bảng film_actor
ALTER TABLE film_actor
ADD CONSTRAINT fk_film FOREIGN KEY (film_id)
REFERENCES film(film_id);

SELECT a.first_name, a.last_name
FROM actor a
WHERE a.actor_id IN (
    SELECT fa.actor_id
    FROM film_actor fa
    INNER JOIN film f ON fa.film_id = f.film_id
    WHERE f.title = 'ACADEMY DINOSAUR'
)
ORDER BY a.first_name, a.last_name;
