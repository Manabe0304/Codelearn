CREATE TABLE actor (
    actor_id SMALLINT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO actor (actor_id, first_name, last_name)
VALUES
(1, 'PENELOPE', 'GUINESS'),
(2, 'NICK', 'WAHLBERG'),
(3, 'ED', 'GUINESS'),
(4, 'JENNIFER', 'DAVIS'),
(5, 'JOHNNY', 'LOLLOBRIGIDA');

SELECT 
    last_name,
    COUNT(last_name) AS number_of_last_name
FROM 
    actor
GROUP BY 
    last_name
HAVING 
    COUNT(last_name) > 1
ORDER BY 
    last_name ASC;
