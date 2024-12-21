CREATE TABLE employees (
    id SMALLINT PRIMARY KEY,
    role VARCHAR(50),
    name VARCHAR(50),
    building VARCHAR(50),
    years_employed SMALLINT
);

-- Chèn dữ liệu mẫu
INSERT INTO employees (id, role, name, building, years_employed)
VALUES
(1, 'Engineer', 'Becky A.', '1e', 4),
(2, 'Engineer', 'Dan B.', '1e', 2),
(3, 'Engineer', 'Sharon F.', '1e', 6),
(4, 'Engineer', 'Dan M.', '1e', 4),
(5, 'Engineer', 'Malcom S.', '1e', 1),
(6, 'Artist', 'Tylar S.', '2w', 3),
(7, 'Artist', 'Daria O.', '2w', 4),
(8, 'Artist', 'Bill. C', '2w', 5),
(9, 'Artist', 'Yancy I.', '2w', 7),
(10, 'Artist', 'Oliver P.', '2w', 7),
(11, 'Manager', 'Scott K.', '1e', 7),
(12, 'Manager', 'Lillia A.', '1e', 9),
(13, 'Manager', 'Sherman D.', '2w', 3),
(14, 'Engineer', 'Tylar S.', '2w', 6),
(15, 'Artist', 'Taylor S.', NULL, 0),
(16, 'Artist', 'Charlie P.', NULL, 0);

SELECT name, role
FROM employees
WHERE building IS NULL;
