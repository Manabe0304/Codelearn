CREATE TABLE transcript (
  id SMALLINT,
  point SMALLINT
);

INSERT into transcript (a, b)
VALUES 
(1, 8.333), 
(2, 9.55), 
(3, 10);

SELECT 
id,ROUND(point,2) AS point
FROM 
transcript;
