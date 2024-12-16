CREATE TABLE math (
  a INTEGER,
  b INTEGER
);

INSERT into math (a, b)
VALUES 
(3, 2), 
(8, 99), 
(11, 43),
(15, 1);

SELECT
a,
b,
--result of summation
a + b AS "+",
--result of subtraction
a -b AS "-",
 --result of multiplication
a * b AS "*",
 --result of division
ROUND(a/b::DECIMAL,2) AS "/"
FROM
math;
