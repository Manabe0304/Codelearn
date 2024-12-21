CREATE TABLE expressions (
    id SMALLINT PRIMARY KEY,
    a INTEGER,
    b INTEGER,
    operation CHAR(1),
    c INTEGER
);

-- Chèn dữ liệu mẫu
INSERT INTO expressions (id, a, b, operation, c)
VALUES
(1, 2, 3, '+', 5),
(2, 2, 3, '+', 6),
(3, 3, 2, '/', 1),
(4, 4, 7, '*', 28),
(5, 54, 2, '-', 27),
(6, 3, 0, '/', 0);

SELECT id, a, b, operation, c
FROM expressions
WHERE 
    (operation = '+' AND a + b = c) OR
    (operation = '-' AND a - b = c) OR
    (operation = '*' AND a * b = c) OR
    (operation = '/' AND b != 0 AND a / b = c)
ORDER BY id;
