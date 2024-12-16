CREATE TABLE leaderboard (
  id SMALLINT,
  name VARCHAR(50),
  score INTEGER
);

INSERT into leaderboard (id, name, score)
VALUES 
(1, 'vietcv', 3001), 
(2, 'kien_the_sun', 2401), 
(3, 'TieuMuoiAnhViet', 2477);

SELECT
id, name, score
FROM
leaderboard
ORDER BY
score DESC;
