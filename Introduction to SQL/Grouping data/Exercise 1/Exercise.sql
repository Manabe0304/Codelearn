CREATE TABLE film (
    film_id SMALLINT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE actor (
    actor_id SMALLINT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    last_update TIMESTAMP NOT NULL
);

CREATE TABLE film_actor (
    actor_id SMALLINT,
    film_id SMALLINT,
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY (actor_id, film_id),
    FOREIGN KEY (actor_id) REFERENCES actor(actor_id) ON DELETE CASCADE,
    FOREIGN KEY (film_id) REFERENCES film(film_id) ON DELETE CASCADE
);

-- Dữ liệu bảng film
INSERT INTO film (film_id, title) VALUES
(1, 'ACADEMY DINOSAUR'),
(2, 'ACE GOLDFINGER'),
(3, 'ADAPTATION HOLES'),
(4, 'AFFAIR PREJUDICE');

-- Dữ liệu bảng actor
INSERT INTO actor (actor_id, first_name, last_name, last_update) VALUES
(1, 'PENELOPE', 'GUINESS', '2006-02-15 04:34:33'),
(2, 'NICK', 'WAHLBERG', '2006-02-15 04:34:33'),
(3, 'ED', 'CHASE', '2006-02-15 04:34:33');

-- Dữ liệu bảng film_actor
INSERT INTO film_actor (actor_id, film_id, last_update) VALUES
(1, 1, '2006-02-15 05:05:03'),
(1, 2, '2006-02-15 05:05:03'),
(1, 3, '2006-02-15 05:05:03'),
(2, 4, '2006-02-15 05:05:03'),
(3, 2, '2006-02-15 05:05:03');

SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS films
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
GROUP BY a.actor_id
ORDER BY films DESC, a.first_name, a.last_name
LIMIT 1;
