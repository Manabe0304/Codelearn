CREATE TABLE moviesInfo (
    title VARCHAR(50),
    director VARCHAR(50),
    year SMALLINT,
    oscars SMALLINT
);

INSERT INTO moviesInfo (title, director, year, oscars)
VALUES
('BoBoiBoy: The Movie', 'Nizam Razak', 2016, 0),
('Inception', 'Christopher Nolan', 2010, 4),
('Interstellar', 'Christopher Nolan', 2014, 1),
('Munna Bhai M.B.B.S.', 'Rajkumar Hirani', 2003, 0),
('My Dear Brother', 'Ertem Egilmez', 1973, 0),
('Rocky John', 'G. Avildsen', 1976, 3),
('The Nights of Cabiria', 'Federico Fellini', 1957, 1),
('The Sixth Sense', 'M. Night Shyamalan', 1999, 6),
('The Sixth Sense', 'M. Night Shyamalan', 1999, 6),
('Tokyo Story', 'Yasujirô Ozu', 1953, 0),
('Yojimbo', 'Akira Kurosawa', 1961, 1);

SELECT 
    director
FROM 
    moviesInfo
WHERE 
    year >= 1950
GROUP BY 
    director
HAVING 
    SUM(oscars) > 2
ORDER BY 
    director ASC;
