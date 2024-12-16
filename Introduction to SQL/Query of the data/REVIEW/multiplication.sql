CREATE TABLE multiplication (
  a SMALLINT, 
  b SMALLINT
);

INSERT into multiplication (a, b)
VALUES 
(1, 2), 
(2, 4), 
(3, 3);

SELECT
a, b, a * b as c
FROM
multiplication
