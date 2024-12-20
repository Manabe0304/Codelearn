-- Bước 1: Tạo bảng suspect
CREATE TABLE suspect (
    id SMALLINT,
    name VARCHAR(50),
    surname VARCHAR(50),
    height SMALLINT,
    weight SMALLINT
);

-- Bước 2: Thêm dữ liệu mẫu vào bảng
INSERT INTO suspect (id, name, surname, height, weight) VALUES
(1, 'John', 'Doe', 165, 60),
(2, 'Bill', 'Green', 170, 67),
(3, 'Baelfire', 'Grehn', 172, 70),
(4, 'Bill', 'Gretan', 165, 55),
(5, 'Brendon', 'Grewn', 150, 50),
(6, 'bill', 'Green', 169, 50);

-- Bước 3: Truy vấn để tìm nghi phạm
SELECT
id, name, surname
FROM
suspect
WHERE
(name ILIKE 'B%') AND ( surname ILIKE 'Gre_n') AND (height <= 170)
ORDER BY id ASC;
