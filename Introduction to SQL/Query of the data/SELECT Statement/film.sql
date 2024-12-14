CREATE TABLE film (
  film_id SMALLINT,
  title VARCHAR(255),
  release_year VARCHAR(4),
  length SMALLINT
);

INSERT into film (film_id, title, release_year, length)
VALUES
(1, 'ACADEMY DINOSAUR', '2006', 86),
(2, 'ACE GOLDFINGER', '2006', 48);

--Show the information of all films in database.
SELECT 
title, release_year
FROM
film;
